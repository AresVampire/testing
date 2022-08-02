import 'package:flutter/material.dart';

class CurvedFirstBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);

    path.relativeQuadraticBezierTo(
      size.width / 6, 
      -10, 
      size.width / 3, 
      20,
    );
    path.relativeQuadraticBezierTo(
      size.width / 6, 
      20, 
      size.width / 3, 
      0,
    );
    path.relativeQuadraticBezierTo(
      size.width / 4, 
      -30, 
      size.width / 3, 
      -20,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 60);

    path.relativeQuadraticBezierTo(
      - size.width / 4, 
      45, 
      - size.width / 2, 
      40,
    );
    path.relativeQuadraticBezierTo(
      - size.width / 4, 
      -5, 
      - size.width / 2, 
      20,
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

class CurvedSecondBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);

    path.relativeQuadraticBezierTo(
      size.width / 6, 
      -10, 
      size.width / 3, 
      20,
    );
    path.relativeQuadraticBezierTo(
      size.width / 6, 
      20, 
      size.width / 3, 
      0,
    );
    path.relativeQuadraticBezierTo(
      size.width / 4, 
      -30, 
      size.width / 3, 
      -20,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 60);

    path.relativeQuadraticBezierTo(
      - size.width / 4, 
      60, 
      - size.width / 2, 
      30,
    );
    path.relativeQuadraticBezierTo(
      - size.width / 4, 
      -40, 
      - size.width / 2, 
      30,
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

class CurvedThirdBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 0);

    path.relativeQuadraticBezierTo(
      size.width / 7, 
      -10, 
      size.width * 2 / 7, 
      15,
    );
    path.relativeQuadraticBezierTo(
      size.width / 7, 
      20, 
      size.width * 2 / 7, 
      15,
    );
    path.relativeQuadraticBezierTo(
      size.width * 2 / 7, 
      -45, 
      size.width * 3 / 7, 
      65,
    );

    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height - 95);

    path.relativeQuadraticBezierTo(
      - size.width / 4, 
      65, 
      - size.width / 2, 
      60,
    );
    path.relativeQuadraticBezierTo(
      - size.width / 4, 
      5, 
      - size.width / 2, 
      35,
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