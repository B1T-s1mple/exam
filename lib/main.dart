import 'package:exam/features/home/presentation/cubit/cubit/dars_uyga_vazifa_api_cubit.dart';
import 'package:exam/features/home/presentation/pages/home_page.dart';
import 'package:exam/features/home/presentation/pages/uyga_vazifa_api_cubit.dart';
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

      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => DarsUygaVazifaApiCubit()),

        ],

        child: HomePage(),
      ),
    );
  }
}
