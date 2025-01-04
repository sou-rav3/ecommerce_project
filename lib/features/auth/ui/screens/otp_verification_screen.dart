import 'package:ecommerce_project/app/app_colors.dart';
import 'package:ecommerce_project/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  static const String name = '/otp-verification';

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 80),
                const AppLogoWidget(),
                const SizedBox(height: 26),
                Text('Enter OTP Code',
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 08),
                Text('A 4 digit OTP code has been sent',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        )),
                const SizedBox(height: 34),
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  animationDuration: const Duration(milliseconds: 300),
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    selectedFillColor: AppColors.themeColor,
                    activeFillColor: AppColors.themeColor,
                  ),
                  keyboardType: TextInputType.number,
                  appContext: context,
                  controller: _otpTEController,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // if(_formKey.currentState!.validate()) {}
                  },
                  child: const Text("Next"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
