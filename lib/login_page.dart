import 'package:flutter/material.dart';
import 'package:fluttertest/components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController txtUsername = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome to Application $statusLogin",
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 62, 4, 223),
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextfield(
              txtController: txtUsername,
              myHint: "input username",
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: txtPassword,
              decoration: const InputDecoration(hint: Text("Input password")),
              obscureText: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    final username = txtUsername.text.trim();
                    final password = txtPassword.text.trim();
                    if (username == "admin" && password == "admin") {
                      statusLogin = "admin";
                    } else {
                      statusLogin = "failed";
                    }
                  });
                },
                child: const Text("Login"),
              ),
              ElevatedButton(onPressed: () {}, child: const Text("Register")),
            ],
          ),
        ],
      ),
    );
  }
}