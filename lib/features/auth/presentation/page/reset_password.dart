import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/auth/presentation/page/Login.dart';
import 'package:exam/features/auth/repositories/exam_repo.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key, required this.forgot_email});
  Map<String, dynamic> forgot_email = {};
  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final passwordcontroller_2 = TextEditingController();
  final passwordcontroller = TextEditingController();

  final GlobalKey<FormState> text_2 = GlobalKey<FormState>();
  final GlobalKey<FormState> text_1 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resset Pasword'), centerTitle: true),

      body: Column(
        children: [
          SizedBox(height: 56),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: text_2,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Parolni tasdiqlang";
                  }
                  if (value != passwordcontroller.text) {
                    return "bir xil qib yoz ee";
                  }
                  return null;
                },
                controller: passwordcontroller,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'New Password',
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
              key: text_1,
              child: TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Parolni tasdiqlang";
                  }
                  if (value != passwordcontroller.text) {
                    return "bir xil qib yoz ee";
                  }
                  return null;
                },
                controller: passwordcontroller_2,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: 'New Password',
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
              'onPress': () async {
                if (text_1.currentState!.validate() &&
                    text_2.currentState!.validate()) {
                  if (passwordcontroller.text == passwordcontroller_2.text) {
                    try {
                      await ExamRepo().ResetPassword(
                        
                        email:   widget.forgot_email['email'],
                        new_password: passwordcontroller.text
                      );

                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                        (route) => false,
                      );

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Parol ozgard !")),
                      );
                    } catch (e) {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Xatolik: $e")));
                    }
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Parol bir xilqb yoz e !!")),
                    );
                  }
                }
              },
              'text': 'Continiun',
              'color': AppColors.primary_color,
              'text_color': Colors.white,
            },
          ),
        ],
      ),
    );
  }
}
