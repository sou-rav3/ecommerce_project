import 'package:ecommerce_project/app/app_colors.dart';
import 'package:ecommerce_project/features/auth/ui/screens/otp_verification_screen.dart';
import 'package:ecommerce_project/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static const String name = '/email-verification';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
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
                Text('Welcome Back',
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 08),
                Text('Please Enter Your Email Address',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        )),
                const SizedBox(height: 34),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: _emailTEController,
                  decoration: const InputDecoration(
                    hintText: "Email Address",
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? value) {
                    if(value?.trim().isEmpty??true){
                      return "Enter Your Email Address";
                    }
                    if(EmailValidator.validate(value!) == false) {
                      return "Enter Your Valid Email Address";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // if(_formKey.currentState!.validate()) {}
                    Navigator.pushNamed(context, OtpVerificationScreen.name);
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
