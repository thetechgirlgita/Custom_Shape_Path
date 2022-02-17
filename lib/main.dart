import "package:flutter/material.dart" ;
import 'dart:ui';



Color colorOne = Colors.pink;
Color colorTwo = Colors.black;
Color colorThree = Color(0xffCE7C00).withOpacity(0.8);
final appTheme = ThemeData(
  primarySwatch : Colors.blue,
);

void main(){
  runApp(const demo());
}


// ignore: camel_case_types
class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Shape_Painter(),
    );
  }
}

// ignore: camel_case_types
class Shape_Painter extends StatefulWidget {
  const Shape_Painter({Key? key}) : super(key: key);

  @override
  _Shape_PainterState createState() => _Shape_PainterState();
}

// ignore: camel_case_types
class _Shape_PainterState extends State<Shape_Painter> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  TopBar(),
    );
  }
}


class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: 300,
      ),
      painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.moveTo(0, size.height * 2.25);

    path.quadraticBezierTo(size.width / 2.2, size.height / 0.5, size.width / 2,
        size.height * 0.45);
    path.quadraticBezierTo(
        size.width / 3.5, size.height * 0.2, 0, size.height * 0.35);
    path.close();
    paint.color = colorThree;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }

}