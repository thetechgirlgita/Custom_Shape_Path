import "package:flutter/material.dart" ;
import "theme/colors.dart";
import 'top_bar.dart';

void main(){
  runApp(const demo());
}

class demo extends StatelessWidget {
  const demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Shape_Painter(),
    );
  }
}

class Shape_Painter extends StatefulWidget {
  const Shape_Painter({Key? key}) : super(key: key);

  @override
  _Shape_PainterState createState() => _Shape_PainterState();
}

class _Shape_PainterState extends State<Shape_Painter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TopBar(),
      ),
    );
  }
}

