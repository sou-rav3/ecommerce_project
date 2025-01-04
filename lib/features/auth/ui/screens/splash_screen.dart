import 'package:ecommerce_project/features/auth/ui/screens/email_verification_screen.dart';
import 'package:ecommerce_project/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}



class _SplashScreenState extends State<SplashScreen> {

  Future<void> _moveToNextScreen() async{
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacementNamed(context, EmailVerificationScreen.name);
  }

  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              Spacer(),
              AppLogoWidget(),
              Spacer(),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}


