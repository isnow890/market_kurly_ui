import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:impl/models/product.dart';
import 'package:impl/screens/components/product_item.dart';
import 'package:impl/screens/home/components/circle_container.dart';
import 'package:impl/screens/home/components/product_filter_button.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: CustomScrollView(
        slivers: [
          // CupertinoSliverRefreshControl(
          //   onRefresh: () => Future<void>.delayed(const Duration(seconds: 1)),
          // ),
          SliverAppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            titleSpacing: 0.0,
            actions: [
              SizedBox(
                child: ProductFilterButton(),
                width: 100,
              ),

            ],

          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200.0,
                mainAxisSpacing: 30.0,
                crossAxisSpacing: 8.0,
                childAspectRatio: 0.6),
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Stack(
                  children: [
                    ProductItem(
                      product: productList[index],
                    ),
                    Positioned(
                      bottom: 90,
                      right: 10,
                      child: CircleContainer(
                        iconPath: 'assets/icons/shopping-cart.svg',
                      ),
                    ),
                  ],
                );
              },
              childCount: productList.length,
            ),

          )
        ],
      ),
    );
  }
}
