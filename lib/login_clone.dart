import 'package:flutter/material.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(height: 60),

              Text(
                "facebook",
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1877F2),
                ),
              ),

              SizedBox(height: 40),

              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email atau nomor telepon",
                    filled: true,
                    fillColor: Color(0xFFF5F6F7),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Kata sandi",
                    filled: true,
                    fillColor: Color(0xFFF5F6F7),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1877F2),
                    foregroundColor: Colors.white,
                  ),
                  child: Text("Masuk", style: TextStyle(fontSize: 16)),
                ),
              ),

              SizedBox(height: 12),

              TextButton(
                onPressed: () {},
                child: Text(
                  "Lupa kata sandi?",
                  style: TextStyle(color: Color(0xFF1877F2)),
                ),
              ),

              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Color(0xFF42B72A),
                    side: BorderSide(color: Color(0xFF42B72A)),
                  ),
                  child: Text("Buat akun baru", style: TextStyle(fontSize: 16)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}