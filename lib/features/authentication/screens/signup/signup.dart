import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:projekt_zespolowy_pcz/common/widgets/login_signup/form_divider.dart';
import 'package:projekt_zespolowy_pcz/common/widgets/login_signup/social_buttons.dart';
import 'package:projekt_zespolowy_pcz/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(ZenSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(ZenTexts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(height: ZenSizes.spaceBetweenSections),

              //Form
              SignupForm(
                passwordTextController: passwordController,
              ),

              const SizedBox(height: ZenSizes.spaceBetweenSections),

              //Divider
              ZenFormDivider(dividerText: ZenTexts.orSignUpWith.capitalize!),

              const SizedBox(height: ZenSizes.spaceBetweenSections),

              //Social buttons
              const ZenSocialButtons(),

              const SizedBox(height: ZenSizes.spaceBetweenSections),
            ],
          ),
        ),
      ),
    );
  }
}
