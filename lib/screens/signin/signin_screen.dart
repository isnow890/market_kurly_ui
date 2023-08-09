import 'package:flutter/material.dart';

import '../../theme.dart';
import 'components/kurly_sign_form.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = '/sign_in';

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('로그인',
            style: textTheme().titleMedium?.copyWith(color: Colors.black)),
        automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        bottom: PreferredSize(
          child: Divider(),
          preferredSize: Size.fromHeight(1.0),
        ),
      ),
      body: KurlySignForm(),
    );
  }
}