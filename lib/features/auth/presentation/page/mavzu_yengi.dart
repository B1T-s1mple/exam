import 'package:exam/features/home/presentation/cubit/new_mavzu_cubir.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MavzuYengi extends StatefulWidget {
  const MavzuYengi({super.key});

  @override
  State<MavzuYengi> createState() => _MavzuYengiState();
}

class _MavzuYengiState extends State<MavzuYengi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          BlocBuilder<NewMavzuCubir, dynamic>(
            builder: (context, state) {
              return Center(
                child: GradientText(
                  state.toString(),
                  style: TextStyle(fontSize: 380, fontWeight: FontWeight.w900),
                  colors: [Colors.red, Colors.blue, Colors.red, Colors.blue],
                  gradientType: GradientType.radial,
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        spacing: 50,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<NewMavzuCubir>().son();
            },
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<NewMavzuCubir>().son_re();
            },
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<NewMavzuCubir>().son_reset();
            },
          ),
        ],
      ),
    );
  }
}
