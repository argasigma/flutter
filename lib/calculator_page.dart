import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator Page")),
      body: Column(children: [
        Text(
          "Kalkulator",
          style: TextStyle(fontSize: 20,
          color: Colors.blue,
          fontStyle: FontStyle.italic,
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(hint: Text("Masukkan angka pertama")),
          ),
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: TextField(
            decoration: InputDecoration(hint: Text("Masukkan angka kedua")),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(onPressed: () {}, child: Text("+")),
          ElevatedButton(onPressed: () {}, child: Text("-")),
          ElevatedButton(onPressed: () {}, child: Text("×")),
          ElevatedButton(onPressed: () {}, child: Text("÷")),
        ],
        ),
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
          "Hasil: ",
          style: TextStyle(fontSize: 20,
          color: Colors.green,
          ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          ElevatedButton(onPressed: () {}, child: Text("Reset")),
        ],
        ),
      ],
      ),
    );
  }
}