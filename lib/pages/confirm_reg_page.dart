import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  const ConfirmRegPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments;
    final String nama = arguments['name'];
    final String jenisKelamin = arguments['jenis_kelamin'];

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama " + nama,
            style: TextStyle(fontSize: 25, color: Colors.blue),
          ),

          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: Text("Oke"),
          ),
        ],
      ),
    );
  }
}