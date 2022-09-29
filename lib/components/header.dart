import 'package:flutter/material.dart';

Widget header(String title, context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 29),
      GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back,
          size: 27,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 29),
      Text(
        title,
        style: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(
        height: 16,
      ),
    ],
  );
}
