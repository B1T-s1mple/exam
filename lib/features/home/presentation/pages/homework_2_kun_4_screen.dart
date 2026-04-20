import 'package:exam/features/auth/models/exam_model.dart';
import 'package:exam/features/home/models/product.dart';
import 'package:exam/features/home/presentation/provider/homework_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homework2Kun4Screen extends StatefulWidget {
   Homework2Kun4Screen({super.key,required this.hw});
  Map<String, dynamic> hw = {};
  @override
  State<Homework2Kun4Screen> createState() => _Homework2Kun4ScreenState();
}

class _Homework2Kun4ScreenState extends State<Homework2Kun4Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Consumer<HomeProvider>(
        builder: (context, provider, _) {
          final product = provider.products;
          return Column(children: [Center(child: Text(widget.hw['ds']))]);
        },
      ),
    );
  }
}
