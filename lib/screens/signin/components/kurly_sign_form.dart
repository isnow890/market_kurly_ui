import 'package:flutter/material.dart';
import 'package:impl/screens/components/default_button.dart';
import 'package:impl/screens/signin/components/form_error.dart';

import '../../../constraints.dart';

class KurlySignForm extends StatefulWidget {
  KurlySignForm({Key? key}) : super(key: key);

  @override
  State<KurlySignForm> createState() => _KurlySignFormState();
}

class _KurlySignFormState extends State<KurlySignForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String? id;
  String? password;
  String kIdNull = '아이디를 입력해주세요.';
  String kPasswordNull = '비밀번호를 입력해주세요.';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            _buildIdField(),
            const SizedBox(
              height: 12,
            ),
            _buildPasswordField(),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            DefaultButton(
              text: '로그인',
              press: () {
                if (_formKey.currentState!.validate() && errors.isEmpty) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('유효성 검사 확인')));
                }
              },
            ),
            const SizedBox(
              height: 10,
            ),
            FormError(
              errors: errors,
            ),
          ],
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder(Color color) {
    return OutlineInputBorder(borderSide: BorderSide(color: color, width: 1));
  }

  TextFormField _buildIdField() {
    return TextFormField(
      onSaved: (newValue) => id = newValue,
      onChanged: (value) {
        if (value.isEmpty && errors.contains(kIdNull)) {
          setState(() {
            errors.remove(kIdNull);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kIdNull)) {
          setState(() {
            errors.add(kIdNull);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        border: outlineInputBorder(kTextColor),
        focusedBorder: outlineInputBorder(kPrimaryColor),
        errorBorder: outlineInputBorder(kPrimaryColor),
        disabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 16, top: 15, bottom: 15),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 18),
        hintText: kIdNull,
      ),
    );
  }

  TextFormField _buildPasswordField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isEmpty && errors.contains(kPasswordNull)) {
          setState(() {
            errors.remove(kPasswordNull);
          });
        }
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPasswordNull)) {
          setState(() {
            errors.add(kPasswordNull);
          });
        }
        return null;
      },
      decoration: InputDecoration(
        border: outlineInputBorder(kTextColor),
        focusedBorder: outlineInputBorder(kPrimaryColor),
        errorBorder: outlineInputBorder(kPrimaryColor),
        disabledBorder: InputBorder.none,
        contentPadding: EdgeInsets.only(left: 16, top: 15, bottom: 15),
        filled: true,
        fillColor: Colors.white,
        hintStyle: TextStyle(color: Colors.grey[400], fontSize: 18),
        hintText: kPasswordNull,
      ),
    );
  }
}
