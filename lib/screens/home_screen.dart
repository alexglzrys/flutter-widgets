import 'package:componentes_app/screens/screens.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes en Flutter'),
          backgroundColor: Colors.amberAccent,
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text('Nombre de ruta'),
                  leading: Icon(Icons.accessibility_sharp),
                  onTap: () {
                    // ! Forma anterior para navegar. Podemos especificar el tipo de animación (personalizar)
                    /*final route = MaterialPageRoute(
                        builder: (context) => ListviewScreen());
                    Navigator.push(context, route);*/

                    // Navegar a otra ruta
                    Navigator.pushNamed(context, 'listview');

                    // Navegar a otra ruta sin poder regresar a la anterior (especial para login)
                    // Navigator.pushReplacement(context, newRoute)
                  },
                ),
            separatorBuilder: (_, __) => Divider(),
            itemCount: 10));
  }
}
