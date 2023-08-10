import 'package:flutter/material.dart';
import 'package:impl/screens/components/product_item.dart';

import '../../../models/product.dart';
import '../../home/components/circle_container.dart';

class StackProductItem extends StatelessWidget {
  const StackProductItem(
      {Key? key, required this.width, required this.item, required this.number})
      : super(key: key);

  final double width;
  final Product item;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: const EdgeInsets.only(left: 10),
      child: Stack(
        children: [
             ProductItem(product: item),
          Positioned(
            left: 10,
            bottom: 80,
            child: Text(
              '$number',
              style: const TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
          const Positioned(
            right: 10,
            bottom: 85,
            child: CircleContainer(
              iconPath: 'assets/icons/star.svg',
            ),
          ),
          number == 1
              ? Container(
                  height: 190,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.5),
                  ),
                  child: const Center(
                    child: Text(
                      'Coming Soon',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
