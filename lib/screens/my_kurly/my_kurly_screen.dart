import 'package:flutter/material.dart';
import 'package:impl/screens/components/custom_actions.dart';
import 'package:impl/screens/my_kurly/my_kurly_body.dart';

import 'components/my_kurly_header.dart';

class MyKurlScreen extends StatelessWidget {
  const MyKurlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("마이컬리"),
        actions: [CustomActions()],
      ),
      body: SingleChildScrollView(
        child: MyKurlyBody(),
      ),
    );
  }
}
