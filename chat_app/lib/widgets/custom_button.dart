import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.onTap, required this.buttonText});
  VoidCallback? onTap;
  String buttonText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
