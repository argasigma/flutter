import 'package:flutter/material.dart';

class CustomTextfieldClone extends StatelessWidget {
  final String myHint;
  final bool isPassword;

  const CustomTextfieldClone({
    super.key,
    required this.myHint,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hint: Text(myHint),
          filled: true,
          fillColor: const Color.fromARGB(255, 245, 246, 247),
        ),
      ),
    );
  }
}