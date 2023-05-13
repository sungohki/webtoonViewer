import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        // AppBar shadow degree
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          "Today's WebToon",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      // body: ,
    );
  }
}
