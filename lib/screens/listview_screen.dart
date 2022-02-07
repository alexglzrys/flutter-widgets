import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
        ),
        body: ListView(
          /* Los ListView aceptan un conjunto de hijos 
          para mostrarlos dentro del listado, 
          esto evita desbordamientos en la pantalla, provocando que los elementos se vean cortados o no aparezcan */
          children: const [
            Text('PHP'),
            Text('MySQL'),
            Text('JavaScript'),
            Text('CSS'),
            Text('HTML'),
            Text('Dart')
          ],
        ));
  }
}
