import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  ListviewScreen({Key? key}) : super(key: key);

  final opcionesMenu = ['Megaman', 'Superman', 'Dragon Ball', 'Batman'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Personalizado'),
        ),
        // Listview tiene varios constructores por nombre para mostrar de diferente manera el listado de sus elementos
        body: ListView.separated(
            // El Widget a renderizar dentro del listado
            itemBuilder: (context, index) => ListTile(
                  title: Text(opcionesMenu[index]),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
            // Widget a renderizar como separador de cada elemento en la lista
            // Un estandar en Dart es que si no se usan los argumentos se renombren con guiones bajos (Esto es vàlido para nombrar varibales)
            separatorBuilder: (_, __) => Divider(),
            // El número de elementos a dibujar en la lista
            itemCount: opcionesMenu.length));
  }
}
