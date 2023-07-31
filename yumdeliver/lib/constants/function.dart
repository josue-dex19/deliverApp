import 'package:flutter/material.dart';

int nombre = 0;
void incrementer() {
  nombre++;
}

void decrementer() {
  if (nombre > 0) {
    nombre--;
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromCircle(center: const Offset(50, 50), radius: 50);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
