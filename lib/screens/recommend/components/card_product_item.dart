import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../components/product_item.dart';

class CardProductItem extends StatelessWidget {
  final Product item;

  const CardProductItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: ProductItem(
            product: item,
            lineChange: true,
            textContainerHeight: 50,
          )),
          Container(
            height: 80,
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  width: 1.0,
                  color: Color(0xFFF5F5F5),
                ),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text(
                  '이렇게 블라블라블라'
                  '이렇게 블라블라블라',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
