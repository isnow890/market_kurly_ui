import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:impl/constraints.dart';

import '../main_screens.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static String routeName = '/splash';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: Center(
                child: Text('Kurly',
                    style: GoogleFonts.pacifico(
                        fontSize: 28, color: Colors.white)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(24),
                child: TextButton(
                  onPressed: () {
                    _completeSplash(context, MainScreens());
                  },
                  child: Text('Continue'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _completeSplash(BuildContext context, Widget widget) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (_) => widget));
  }
}
