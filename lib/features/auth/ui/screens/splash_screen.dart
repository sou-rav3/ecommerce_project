import 'package:ecommerce_project/app/assets_path.dart';
import 'package:ecommerce_project/features/auth/ui/screens/email_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              SvgPicture.asset(
                AssetsPath.appLogoSvg,
                width: 180,
              ),
              const Spacer(),
              CircularProgressIndicator()
            ],
          ),
        ),
      ),
    );
  }
}
