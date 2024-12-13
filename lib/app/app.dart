import 'package:ecommerce_project/features/auth/ui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class CraftyBay extends StatelessWidget {
  const CraftyBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => const SplashScreen()
      },
    );
  }
}
