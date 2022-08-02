import 'package:flutter/material.dart';

class CurvedBottomBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);
    
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 80);

    path.relativeQuadraticBezierTo(
      - size.width / 4, 
      -10, 
      - size.width / 2, 
      40,
    );
    path.relativeQuadraticBezierTo(
      - size.width / 4, 
      50, 
      - size.width / 2, 
      40,
    );

    path.lineTo(0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}