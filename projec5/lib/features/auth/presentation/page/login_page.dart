// import 'package:flutter/material.dart';
// import 'package:projec5/core/extension/navigation.dart';
// import 'package:projec5/core/text/app_text.dart';
// import 'package:projec5/core/text/text_styles.dart';
// import 'package:projec5/core/widget/button/custom_button.dart';
// import 'package:projec5/core/widget/button/custom_text_button.dart';
// import 'package:projec5/core/widget/custom_text_field.dart';
// import 'package:projec5/features/home/presentation/page/home_page.dart';

// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(AppText.welcome, style: TextStyles.inter70022),
//             SizedBox(height: 8),
//             Text(AppText.account, style: TextStyles.inter50015),
//             SizedBox(height: 32),
//             CustomTextField(
//               text: AppText.email,
//               prefixIcon: (Icons.email_outlined), controller: null,
//             ),
//             SizedBox(height: 16),
//             CustomTextField(
//               text: AppText.password,
//               prefixIcon: (Icons.lock_outlined),
//               suffixIcon: (Icons.visibility_outlined), controller: null,
//             ),
//             SizedBox(height: 24),
//             Align(
//               alignment: Alignment.centerRight,
//               child: CustomTextButton(text: AppText.forgot),
//             ),
//             SizedBox(height: 72),
//             CustomButton(
//               onPressed: () {
//                 context.customPushReplacement(HomePage());
//               },
//               child: Text(AppText.login),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
