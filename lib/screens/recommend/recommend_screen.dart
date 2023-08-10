import 'package:flutter/material.dart';
import 'package:impl/models/product.dart';
import 'package:impl/screens/recommend/components/card_product_item.dart';

import '../../theme.dart';
import 'components/stack_product_item.dart';

class RecommendScreen extends StatelessWidget {
  const RecommendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('추천'),
          automaticallyImplyLeading: false,
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                '베이커리 인기 급상승 랭킹',
                style: textTheme().displayLarge,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                // color: Colors.orange[100],
                height: 270,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return StackProductItem(
                        width: 160,
                        item: productList[index],
                        number: index + 1);
                  },
                  itemCount: productList.length,
                )),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                '후기가 좋은 상품',
                style: textTheme().displayLarge,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                height: 360,
                // color: Colors.red[100],
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: productList.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 320,
                      child: CardProductItem(
                        item: productList[index],
                      ),
                    );
                  },
                ))
          ],
        ));
  }
}
