import 'package:flutter/material.dart';

class TypeJuice extends StatelessWidget {
  final String tipejus;
  final bool isSelected;
  final VoidCallback onTap;
  TypeJuice(
      {required this.tipejus, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          tipejus,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}
