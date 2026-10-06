import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegPage extends StatelessWidget {
  const ConfirmRegPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = Get.arguments as Map<String, dynamic>? ?? {};
    final nama = arguments['name'] as String? ?? 'Unknown';
    final jenisKelamin = arguments['jenis_kelamin'] as String? ?? 'Unknown';

    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama: $nama",
            style: const TextStyle(fontSize: 25, color: Colors.blue),
          ),
          const SizedBox(height: 12),
          Text(
            "Jenis Kelamin: $jenisKelamin",
            style: const TextStyle(fontSize: 18, color: Colors.grey),
          ),
          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Oke"),
          ),
        ],
      ),
    );
  }
}