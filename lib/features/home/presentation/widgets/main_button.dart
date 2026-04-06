import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MainButton extends StatefulWidget {
  MainButton({super.key, required this.button});
  Map<String, dynamic> button = {};
  @override
  State<MainButton> createState() => _MainButtonState();
}

class _MainButtonState extends State<MainButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15)),
        backgroundColor: widget.button['color'],
        elevation: 0,
        fixedSize: Size(453, 56),
      ),
      onPressed: () {
        widget.button['onPress']();
      },
      child: Text(
        widget.button['text'],
        style: TextStyle(color: widget.button['text_color'],fontSize: 17),
      ),
    );
  }
}
