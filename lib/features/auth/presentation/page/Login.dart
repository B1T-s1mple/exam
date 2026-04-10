import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/auth/models/exam_model.dart';
import 'package:exam/features/auth/presentation/page/forgot_passsword.dart';
import 'package:exam/features/auth/presentation/page/signUp.dart';
import 'package:exam/features/auth/presentation/provider/exam_provider.dart';
import 'package:exam/features/home/presentation/pages/hamo_orig.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool vision = false;
  final emailController = TextEditingController();
  final passwordcontroller = TextEditingController();

  final GlobalKey<FormState> text_1 = GlobalKey<FormState>();
  final GlobalKey<FormState> text_2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Login')),

      body: Column(
        children: [
          SizedBox(height: 56),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: text_1,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Quyon tezligida Emailni kirit";
                  }
                  return null;
                },
                controller: emailController,
                obscureText: vision,
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
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: text_2,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Quyon tezligida Parol kirit!!!!!!!!!!!!!!!!!!!!!!";
                  }
                  return null;
                },
                controller: passwordcontroller,
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
          ),
          SizedBox(height: 40),
          Consumer<ExamProvider>(
            builder: (context, provider, _) {
              return MainButton(
                button: {
                  'onPress': () async {
                    if (text_1.currentState!.validate() &&
                        text_2.currentState!.validate()) {
                      await context.read<ExamProvider>().login(
                        LoginRequest(
                          email: emailController.text.trim(),
                          password: passwordcontroller.text.trim(),
                        ),
                      );

                      final provider = context.read<ExamProvider>();

                      if (provider.loginResult == true) {
                        if (text_1.currentState!.validate() &&
                            text_2.currentState!.validate()) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HamoOrig(),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(provider.loginError ?? "xatoooo"),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              "xatoooo  notogriiiiiiiiiiii  tori yozzzz!!!\n bilmasen forgot password bos yoki sign up qvor",
                            ),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  },
                  'text': 'Login',
                  'color': AppColors.primary_color,
                  'text_color': Colors.white,
                },
              );
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
