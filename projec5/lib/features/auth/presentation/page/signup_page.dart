import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projec5/core/text/app_text.dart';
import 'package:projec5/core/text/text_styles.dart';
import 'package:projec5/core/widget/button/custom_button.dart';
import 'package:projec5/core/widget/custom_text_field.dart';
import 'package:projec5/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:projec5/features/auth/presentation/widget/password_contain.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (BuildContext context, AuthState state) {
          final bloc = context.read<AuthBloc>();
          bool passcheck = bloc.passwordRegExp.hasMatch(
            bloc.passwordController.text,
          );

          return Scaffold(
            body: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: bloc.formKey,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(AppText.welcome2, style: TextStyles.inter70022),
                    SizedBox(height: 8),
                    Text(AppText.account, style: TextStyles.inter50015),
                    SizedBox(height: 32),
                    CustomTextField(
                      text: AppText.email,
                      prefixIcon: (Icons.email_outlined),
                      controller: bloc.emailController,
                      validator: (value) {
                        return bloc.emaILCheck(value)!;
                      },
                    ),
                    SizedBox(height: 16),
                    CustomTextField(
                      text: AppText.password,
                      prefixIcon: (Icons.lock_outlined),
                      suffixIcon: (Icons.visibility_outlined),
                      onChanged: (value) {
                        bloc.add(PasswordChanged());
                      },
                      controller: bloc.passwordController,
                      validator: (value) {
                        return bloc.passwordCheck(value)!;
                      },
                    ),
                    SizedBox(height: 24),

                    PasswordContain(passwordCheck: passcheck),

                    SizedBox(height: 72),
                    CustomButton(onPressed: () {}, child: Text(AppText.signUp)),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
