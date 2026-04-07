import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/auth/presentation/page/forgot_password_part2.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:exam/features/home/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class ForgotPasssword extends StatefulWidget {
  const ForgotPasssword({super.key});

  @override
  State<ForgotPasssword> createState() => _ForgotPassswordState();
}

class _ForgotPassswordState extends State<ForgotPasssword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Forgot Password'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 69),
            Text(
              " Don’t worry.\n Enter your email and we’ll\n send you a link to reset your\n password.",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
            ),

            SizedBox(height: 46),
            text_field(input: {'text': 'Eamil'}),
            SizedBox(height: 32),
            MainButton(
              button: {
                'onPress': () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordPart2(),
                    ),
                  );
                },
                'text': 'Continiun',
                'color': AppColors.primary_color,
                'text_color': Colors.white,
              },
            ),
          ],
        ),
      ),
    );
  }
}
