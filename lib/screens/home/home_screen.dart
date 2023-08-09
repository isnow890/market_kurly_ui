import 'package:flutter/material.dart';
import 'package:impl/constraints.dart';
import 'package:impl/screens/home/components/benefit_page.dart';

import '../../theme.dart';
import '../components/custom_actions.dart';
import 'components/kurly_page.dart';
import 'components/new_product_page.dart';
import 'components/thrifty_shopping_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = ["컬리추천", "신상품", "금주혜택", "알뜰쇼핑"];
    return DefaultTabController(
      initialIndex: 0,
      length: categories.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Kurly'),
          actions: [
            CustomActions(),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: .3, color: Colors.grey),
                ),
                color: Colors.white,
              ),
              child: TabBar(
                tabs: categories
                    .map((e) => Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Text(e,style: TextStyle(fontSize: 13)),
                        ))
                    .toList(),
                labelColor: kPrimaryColor,
                unselectedLabelColor: kSecondaryColor,
                labelStyle: textTheme().displayMedium?.copyWith(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 2, color: kPrimaryColor),
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            KurlyPage(),
            NewProductPage(),
            BenefitPage(),
            ThriftyShoppingPage(),
          ],
        ),
      ),
    );
  }
}
