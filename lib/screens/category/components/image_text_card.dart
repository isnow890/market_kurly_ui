import 'package:flutter/material.dart';
import 'package:impl/models/grid_category_menu.dart';

class ImageTextCard extends StatelessWidget {
  final GridCategoryMenu item;

  const ImageTextCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 1.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      margin: EdgeInsets.zero,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    item.title,
                    style: TextStyle(fontSize: 13.0),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
