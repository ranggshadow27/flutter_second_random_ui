import 'package:bwa_second_ui/pages/empty_state.dart';
import 'package:bwa_second_ui/pages/pricing_screen.dart';
import 'package:bwa_second_ui/pages/rating_screen.dart';
import 'package:bwa_second_ui/pages/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SecondDayUI());
}

class SecondDayUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SignIn(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/empty_state': (context) => EmptyState(),
          '/rating_screen': (context) => RatingScreen(),
          '/pricing_screen': (context) => PricingScreen(),
        });
  }
}
