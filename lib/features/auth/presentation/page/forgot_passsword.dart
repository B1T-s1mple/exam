import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/auth/presentation/page/forgot_password_part2.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';

class ForgotPasssword extends StatefulWidget {
  const ForgotPasssword({super.key});

  @override
  State<ForgotPasssword> createState() => _ForgotPassswordState();
}

class _ForgotPassswordState extends State<ForgotPasssword> {
  final emailController = TextEditingController();
  final GlobalKey<FormState> text_1 = GlobalKey<FormState>();

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Form(
                key: text_1,
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Quyon tezligida Emailni kiriting pls";
                    }
                    return null;
                  },
                  controller: emailController,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(color: Colors.grey.shade200),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            MainButton(
              button: {
                'onPress': () {
                  if (text_1.currentState!.validate()) {

                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPasswordPart2(
                          email: {'email': emailController.text},
                        ),
                      ),
                    );
                  }
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
