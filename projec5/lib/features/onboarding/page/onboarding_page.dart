import 'package:flutter/material.dart';
import 'package:projec5/core/extension/git_size_screen.dart';
import 'package:projec5/core/extension/navigation.dart';
import 'package:projec5/core/text/app_text.dart';
import 'package:projec5/core/text/text_styles.dart';
import 'package:projec5/core/widget/button/custom_button.dart';
import 'package:projec5/features/auth/presentation/page/login_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: context.getWidth(),
            child: Image.asset(
              "asset/image/Onboarding.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 48),
          Text(
            AppText.cooking,
            textAlign: TextAlign.center,
            style: TextStyles.inter70022,
          ),
          SizedBox(height: 16),
          Text(
            AppText.join,
            textAlign: TextAlign.center,
            style: TextStyles.inter50017,
          ),
          SizedBox(height: 72),
          CustomButton(
            onPressed: () {
              context.customPushReplacement(LoginPage());
            },
            child: Text(AppText.start, ),
          ),
        ],
      ),
    );
  }
}
