import 'package:flutter/material.dart';

class EduTittle extends StatelessWidget {

  final String education_icon;
  final String education_name;

  const EduTittle({
    super.key,
    required this.education_icon,
    required this.education_name,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(5.0),
        ),
      child: Column(
        children: [
          //inside of box
        ],
      ),
      ),
    );
  }
}
