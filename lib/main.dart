import 'package:exam/features/auth/presentation/page/uyga_vazifa.dart';
import 'package:exam/features/home/presentation/cubit/homework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      home: BlocProvider(
        create: (context) => Homework(),
        child: UygaVazifa(),
      ),
    );
  }
}
