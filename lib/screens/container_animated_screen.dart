import 'dart:math';

import 'package:flutter/material.dart';

class ContainerAnimatedScreen extends StatefulWidget {
  const ContainerAnimatedScreen({Key? key}) : super(key: key);

  @override
  State<ContainerAnimatedScreen> createState() =>
      _ContainerAnimatedScreenState();
}

class _ContainerAnimatedScreenState extends State<ContainerAnimatedScreen> {
  double _width = 50;
  double _height = 50;
  Color _color = Colors.teal;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  double randomBetween(min, max) {
    return (min + Random().nextInt(max - min)).toDouble();
  }

  void changeShape() {
    /*List colors = [
      Colors.red,
      Colors.amber,
      Colors.blue,
      Colors.purple,
      Colors.pink,
      Colors.orange,
      Colors.teal,
      Colors.black54
    ];
    _width = randomBetween(50, 180);
    _height = randomBetween(50, 180);
    _color = colors[Random().nextInt(colors.length)];*/

    final aleatorio = Random();

    _width = aleatorio.nextInt(300).toDouble() +
        70; // el ancho minimo sera 70 y el máximo 300
    _height = aleatorio.nextInt(300).toDouble() + 70;
    _color = Color.fromARGB(aleatorio.nextInt(255), aleatorio.nextInt(255),
        aleatorio.nextInt(255), 1);
    _borderRadius = BorderRadius.circular(aleatorio.nextInt(100).toDouble() +
        10); // El border-radius sera entre 10 y 100

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          // color: _color, // No se puede usar la propiedad color y decoration al mismo tiempo, tiene que ser una u otra
          decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          changeShape();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
