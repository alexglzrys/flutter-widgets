import 'package:flutter/material.dart';

class ListviewStandarScreen extends StatelessWidget {
  ListviewStandarScreen({Key? key}) : super(key: key);

  final opcionesMenu = ['Megaman', 'Superman', 'Dragon Ball', 'Batman'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 1'),
        ),
        body: ListView(
          /* Los ListView aceptan un conjunto de hijos 
          para mostrarlos dentro del listado, 
          esto evita desbordamientos en la pantalla, provocando que los elementos se vean cortados o no aparezcan
          
          Se puede colocar cualquier tipo de Widget, pero...
          ListTiles es el candidato para mostrar textos */
          children: [
            // Itero por cada elemento de mi lista, retorno un Widget ListTile, convierto el resultado del iterable a una lista, y desestructuro todo el contenido de esa lista dentro de mi children: []
            ...opcionesMenu
                .map((element) => ListTile(
                    trailing: Icon(Icons.arrow_forward_ios_outlined),
                    title: Text(element)))
                .toList()

            /*ListTile(
              leading: Icon(Icons.ac_unit_sharp),
              title: Text('PHP - Codeigniter + Laravel'),
            )*/
          ],
        ));
  }
}
