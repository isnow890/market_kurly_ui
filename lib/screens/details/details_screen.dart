import 'package:flutter/material.dart';
import 'package:impl/constraints.dart';
import 'package:impl/models/product.dart';
import 'package:impl/models/product_details_arguments.dart';
import 'package:impl/screens/components/default_button.dart';

import '../../theme.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static String routeName = '/details';

  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          arguments.product.title ?? '',
          style: textTheme().titleMedium?.copyWith(color: Colors.black),
        ),
      ),
      body: Body(
        product: arguments.product,
      ),
      bottomNavigationBar: SafeArea(
        child: Column(
          //bottomNavigation이 최소로 차지하는 공간에만 버튼을 넣게 하려고.
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 5,
              ),
              child: DefaultButton(
                text: '구매하기',
                color: kPrimaryColor,
                press: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
