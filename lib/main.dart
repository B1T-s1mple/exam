import 'package:exam/features/auth/presentation/provider/exam_provider.dart';
import 'package:exam/features/home/presentation/pages/hamo_orig.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/home/presentation/pages/first_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ExamProvider(), child: MyApp()),
  );
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
      home: HamoOrig(),
    );
  }
}
