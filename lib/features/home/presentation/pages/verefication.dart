import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/home/presentation/pages/hamo_orig.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Verefication extends StatefulWidget {
  const Verefication({super.key});

  @override
  State<Verefication> createState() => _VereficationState();
}

class _VereficationState extends State<Verefication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Verefication'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 160),
            Text(
              ' Enter your\n Verification Code',
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 53),
            Row(children: [Pinput(length: 6)]),
            SizedBox(height: 47),
            Text(
              '04:59',
              style: TextStyle(
                color: AppColors.primary_color,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'We send verification code to your\nemail brajaoma*****@gmail.com. You can \ncheck your inbox.',
              style: TextStyle(fontSize: 17),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: Text(
                'I didn’t received the code? Send again',
                style: TextStyle(color: AppColors.primary_color, fontSize: 16),
              ),
            ),
            SizedBox(height: 26),
            MainButton(
              button: {
                'onPress': () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HamoOrig()),
                  );
                },
                'text': 'Veriffy',
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
