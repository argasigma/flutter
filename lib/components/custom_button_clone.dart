import 'package:flutter/material.dart';

class CustomButtonClone extends StatelessWidget {
  final String myText;
  final Color myColor;
  final VoidCallback onTap;

  const CustomButtonClone({
    super.key,
    required this.myText,
    required this.myColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: myColor,
          foregroundColor: Colors.white,
        ),
        child: Text(myText),
      ),
    );
  }
}