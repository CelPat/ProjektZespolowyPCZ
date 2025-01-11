import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/common/styles/spacing_styles.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: ZenSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo
              const ZenLoginHeader(),

              // Login Form
              ZenLoginForm(
                passwordTextController: passwordController,
              ),

              // Divider
              ZenFormDivider(
                dividerText: ZenTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: ZenSizes.spaceBetweenSections),

              // Footer
              const ZenSocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
