import 'package:flutter/material.dart';

class KurlySignForm extends StatefulWidget {
  KurlySignForm({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String>errors =[];
  String? id;
  String? password;
  String kIdNull='아이디를 입력해주세요.';
  String kPasswordNull= '비밀번호를 입력해주세요.';

  @override
  State<KurlySignForm> createState() => _KurlySignFormState();
}

class _KurlySignFormState extends State<KurlySignForm> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
