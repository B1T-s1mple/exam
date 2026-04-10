import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/auth/models/exam_model.dart';
import 'package:exam/features/auth/presentation/page/Login.dart';
import 'package:exam/features/auth/presentation/provider/exam_provider.dart';
import 'package:exam/features/auth/presentation/page/verefication.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final namecontroller = TextEditingController();
  final emailController = TextEditingController();
  final passwordcontroller = TextEditingController();

  final GlobalKey<FormState> text_1 = GlobalKey<FormState>();
  final GlobalKey<FormState> text_2 = GlobalKey<FormState>();
  final GlobalKey<FormState> text_3 = GlobalKey<FormState>();

  bool vision = false;
  bool on = false;
  @override
  void dispose() {
    namecontroller.dispose();
    emailController.dispose();
    passwordcontroller.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign up', textAlign: TextAlign.center),
      ),
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
                    return "Quyon tezligida ismini kirit";
                  }
                  return null;
                },

                controller: namecontroller,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'Name',
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
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(color: Colors.red),
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
                    return "Quyon tezligida Emailni kirit";
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
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: text_3,
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
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Column(
                  children: [
                    Checkbox(
                      value: on,
                      onChanged: (value) {
                        setState(() {
                          on = !on;
                        });
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'By signing up, you agree to the ',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Terms of Service and ',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primary_color,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          ' Privacy Policy',
                          style: TextStyle(
                            color: AppColors.primary_color,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 27),

          Consumer<ExamProvider>(
            builder: (context, provider, _) {
              return MainButton(
                button: {
                  'text': ' Sign up',
                  "text_color": Colors.white,
                  'onPress': () async {
                    if (text_1.currentState!.validate() &&
                        text_2.currentState!.validate() &&
                        text_3.currentState!.validate()) {
                      final request = RegisterRequest(
                        name: namecontroller.text.trim(),
                        password: passwordcontroller.text.trim(),
                        email: emailController.text.trim(),
                      );

                      await context.read<ExamProvider>().register(request);
                      if (provider.registerError != null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(provider.registerError!.toString()),
                          ),
                        );
                      } else if (provider.registerResult == true) {
                        
                      } else if (text_1.currentState!.validate() &&
                          text_2.currentState!.validate() &&
                          text_3.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("akk yaratildi")),
                        );
                      } else {
                        print('toldir');
                      }

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              Verefication(email: emailController.text.trim()),
                        ),
                      );
                    }
                  },

                  'color': AppColors.primary_color,
                },
              );
            },
          ),

          SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Or with',
                style: TextStyle(
                  color: const Color.fromARGB(255, 127, 125, 125),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          InkWell(
            borderRadius: BorderRadius.circular(100),
            onTap: () {},
            child: Container(
              width: 453,
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('images/rasm4.png'),
                  SizedBox(width: 7),
                  Text(
                    'Sign Up with Google',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?', style: TextStyle(fontSize: 16)),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: AppColors.primary_color,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
