import 'package:flutter/material.dart';

class MyShape extends StatelessWidget {
//const MySquare({super.key});
  final String child;
  MyShape({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        height: 200,
        color: const Color.fromARGB(179, 193, 191, 191),
        child: Center(
          child: Text(
            child,
            style: const TextStyle(fontSize: 10),
          ),
        ),
      ),
    );
  }
}
