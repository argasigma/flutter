import 'package:flutter/material.dart';
import '../components/custom_button_clone.dart';
import '../components/custom_textfield_clone.dart';

class LoginClonePage extends StatefulWidget {
  const LoginClonePage({super.key});

  @override
  State<LoginClonePage> createState() => _LoginClonePageState();
}

class _LoginClonePageState extends State<LoginClonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 60, bottom: 30),
            child: Text(
              "facebook",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 24, 119, 242),
              ),
            ),
          ),

          CustomTextfieldClone(myHint: "Email atau nomor telepon"),
          CustomTextfieldClone(myHint: "Kata sandi", isPassword: true),

          CustomButtonClone(
            myText: "Masuk",
            myColor: const Color.fromARGB(255, 24, 119, 242),
            onTap: () {},
          ),

          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Lupa kata sandi?",
              style: TextStyle(color: const Color.fromARGB(255, 24, 119, 242)),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Divider(),
          ),

          CustomButtonClone(
            myText: "Buat akun baru",
            myColor: const Color.fromARGB(255, 66, 183, 42),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}