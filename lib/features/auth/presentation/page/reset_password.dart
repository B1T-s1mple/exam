import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/auth/presentation/page/Login.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:exam/features/home/presentation/widgets/text_field.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

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
                    return "Quyon tezligida kod kirit kirit";
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
                    return "Quyon tezligida kodni qaytar kirit";
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
              'onPress': () {
                if (text_2.currentState!.validate() &&
                    text_1.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
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
    );
  }
}
