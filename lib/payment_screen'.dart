import 'package:flutter/material.dart';

class Cards_Screen extends StatefulWidget {
  const Cards_Screen({super.key});

  @override
  State<Cards_Screen> createState() => _PaymState();
}

class _PaymState extends State<Cards_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Cards"
      ),
    );
  }
}
