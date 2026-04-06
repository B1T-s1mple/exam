import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/home/presentation/pages/forgot_passsword.dart';
import 'package:exam/features/home/presentation/pages/signUp.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:exam/features/home/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool vision = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Login')),

      body: Column(
        children: [
          SizedBox(height: 56),
          text_field(input: {'text': 'Email'}),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              obscureText: vision,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      vision = !vision;
                    });
                  },
                  icon: Icon(
                    vision
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                  color: Colors.grey,
                ),
                hintText: 'Password',
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
          SizedBox(height: 40),
          MainButton(
            button: {
              'onPress': () {},
              'text': 'Login',
              'color': AppColors.primary_color,
              'text_color': Colors.white,
            },
          ),
          SizedBox(height: 33),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPasssword()),
                  );
                },
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary_color,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 38),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don’t have an account yet?'),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
                child: Text(
                  ' Sign Up',
                  style: TextStyle(color: AppColors.primary_color),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
