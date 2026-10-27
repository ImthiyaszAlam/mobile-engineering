import 'package:flutter/material.dart';

class Detailscren extends StatelessWidget {
  final int count;
  const Detailscren({super.key, required this.count});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Receeived Count Data")),
    body: Center(
      child:  Text("$count"),
    ),);
  }
}
