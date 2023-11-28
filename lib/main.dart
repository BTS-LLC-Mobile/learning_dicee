import 'package:flutter/material.dart';
import 'view/main_view.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Dicee"),
        ),
        body: const DicePageStlFull(),
      ),
    ),
  );
}


