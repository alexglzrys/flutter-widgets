import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  ListviewScreen({Key? key}) : super(key: key);

  final opcionesMenu = ['Megaman', 'Superman', 'Dragon Ball', 'Batman'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Personalizado'),
          // Retirar sombra en la barra de titulo
          elevation: 0,
          // Cambiar color de fondo
          backgroundColor: Colors.deepOrange,
        ),
        // Listview tiene varios constructores por nombre para mostrar de diferente manera el listado de sus elementos
        body: ListView.separated(
            // El Widget a renderizar dentro del listado
            itemBuilder: (context, index) => ListTile(
                  title: Text(opcionesMenu[index]),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                  // Lost ListTitle tienen una propiedad para interactuar cuando son presionados
                  // Los onTap se pueden anular con un valor null
                  // Algunas veces necesitaremos un ternario para activar la acción o dejarlo en null según la data de nuestra aplicación
                  onTap: () {
                    print(opcionesMenu[index]);
                  },
                ),
            // Widget a renderizar como separador de cada elemento en la lista
            // Un estandar en Dart es que si no se usan los argumentos se renombren con guiones bajos (Esto es vàlido para nombrar varibales)
            separatorBuilder: (_, __) => Divider(),
            // El número de elementos a dibujar en la lista
            itemCount: opcionesMenu.length));
  }
}
