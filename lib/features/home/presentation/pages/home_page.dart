import 'package:exam/core/constants/app_colors.dart';
import 'package:exam/features/auth/presentation/page/Login.dart';
import 'package:exam/features/auth/presentation/page/signUp.dart';
import 'package:exam/features/home/presentation/widgets/main_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imag = [
    'images/rasm1.png',
    'images/rasm2.png',
    'images/rasm3.png',
  ];
  int currentpage = 0;
  bool ic1 = true;
  bool ic2 = false;
  bool ic3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Column(
        children: [
          SizedBox(
            height: 312,
            child: PageView.builder(
              onPageChanged: (int index) {
                setState(() {
                  currentpage = index;
                });
              },
              itemCount: imag.length,
              itemBuilder: (context, index) {
                currentpage = index;
                return Image.asset(imag[index]);
              },
            ),
          ),
          SizedBox(
            width: 277,

            child: Text(
              textAlign: TextAlign.center,
              'Gain total control of your money',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 272,

            child: Text(
              textAlign: TextAlign.center,
              'Become your own money manager and make every cent count',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(height: 20),
          Row(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: currentpage == 0 ? 8 : 4,
                backgroundColor: currentpage == 0
                    ? AppColors.primary_color
                    : Colors.grey.shade300,
              ),
              CircleAvatar(
                radius: currentpage == 1 ? 8 : 4,
                backgroundColor: currentpage == 1
                    ? AppColors.primary_color
                    : Colors.grey.shade300,
              ),
              CircleAvatar(
                radius: currentpage == 2 ? 8 : 4,
                backgroundColor: currentpage == 2
                    ? AppColors.primary_color
                    : Colors.grey.shade300,
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              button: {
                'color': AppColors.primary_color,
                'text': 'Sign Up',
                'text_color': Colors.white,
                'onPress': () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Signup()),
                  );
                },
              },
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: MainButton(
              button: {
                'color': Colors.grey.shade200,
                'text': 'Login',
                'text_color': AppColors.primary_color,
                'onPress': () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              },
            ),
          ),
        ],
      ),
    );
  }
}
