import 'package:flutter/material.dart';
import 'package:impl/routes.dart';
import 'package:impl/screens/splash/splash_screen.dart';
import 'package:impl/theme.dart';

void main() {
  runApp(MarketKurly());
}

class MarketKurly extends StatelessWidget {
  const MarketKurly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Market Kurly UI',
        initialRoute: SplashScreen.routeName,
        routes: route,
        theme: theme());
  }
}
