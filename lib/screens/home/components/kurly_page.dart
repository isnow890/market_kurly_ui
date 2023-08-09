import 'package:flutter/material.dart';
import 'package:impl/screens/home/components/kurly_banner_item.dart';

class KurlyPage extends StatelessWidget {
  const KurlyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 335,
          child:KurlyBannerItem()

        )
      ],
    );
  }
}
