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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resset Pasword'), centerTitle: true),

      body: Column(
        children: [
          SizedBox(height: 56),
          text_field(input: {'text': 'New Password'}),
          SizedBox(height: 24),
          text_field(input: {'text': 'Retype new password'}),
          SizedBox(height: 32),
          MainButton(
            button: {
              'onPress': () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
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
