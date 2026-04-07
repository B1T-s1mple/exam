import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/auth/presentation/page/reset_password.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPart2 extends StatefulWidget {
  const ForgotPasswordPart2({super.key});

  @override
  State<ForgotPasswordPart2> createState() => _ForgotPasswordPart2State();
}

class _ForgotPasswordPart2State extends State<ForgotPasswordPart2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('images/rasm5.png')],
          ),
          Text(
            'Your email is on the way',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 21,),
          SizedBox(
            width: 300,
            child: Text(textAlign: TextAlign.center,
              'Check your email test@test.com and follow the instructions to reset your\n password',
            ),
          ),
          SizedBox(height: 160,),
            MainButton(
              button: {
                'onPress': () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResetPassword(),
                    ),
                  );
                },
                'text': 'Back to login',
                'color': AppColors.primary_color,
                'text_color': Colors.white,
              },
            ),
        ],
      ),
    );
  }
}
