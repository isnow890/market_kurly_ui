import 'package:flutter/material.dart';
import 'package:impl/models/product_details_arguments.dart';
import 'package:impl/screens/details/details_screen.dart';
import 'package:impl/strings_extensions.dart';

import '../../models/product.dart';
import '../../theme.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  final bool? lineChange;
  final double? textContainerHeight;

  const ProductItem(
      {super.key,
      required this.product,
      this.lineChange = false,
      this.textContainerHeight = 80});

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(
                context,
                DetailsScreen.routeName,
                arguments: ProductDetailsArguments(product: product),
              );
            },
            child: Image.network(
                product.imageUrl ?? 'assets/images/kurly_banner_0.jpg',
                fit: BoxFit.cover),
          ),
        ),
        Container(
          height: textContainerHeight,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    style: textTheme().titleMedium,
                    text: '${product.title} ${lineChange == true ? '\n' : ''}',
                  ),
                  TextSpan(
                      text: '${product.discount}%',
                      style: textTheme()
                          .displayMedium
                          ?.copyWith(color: Colors.red)),
                  TextSpan(
                      text: discountPrice(
                          product.price ?? 0, product.discount ?? 0),
                      style: textTheme().displayMedium),
                  TextSpan(
                    text: '${product.price.toString().numberFormat()}원',
                    style: textTheme().bodyMedium?.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  String discountPrice(int price, int discount) {
    double discountRate = ((100 - discount) / 100);
    int discountPrice = (price * discountRate).toInt();
    return '${discountPrice.toString().numberFormat()}원 ';
  }
}
