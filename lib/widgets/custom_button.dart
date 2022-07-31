import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  final String text;
  final double size;
  final VoidCallback clickedFun;
   CustomButton({Key? key, required this.text, required this.size, required this.clickedFun}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      child: MaterialButton(
        minWidth: size,
        height: size/7,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        onPressed: clickedFun,
      ),
    );
  }
}
