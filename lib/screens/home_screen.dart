import 'package:componentes_app/router/app_routes.dart';
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
        // Pintar las opciones de ménú para navegar en entre pantallas de al aplicación
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  // personalizar el componente con la información de cada Opción de menú
                  title: Text(AppRoutes.menuOptions[index].name),
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: Colors.pinkAccent,
                  ),
                  onTap: () {
                    // ! Forma anterior para navegar. Podemos especificar el tipo de animación (personalizar)
                    /*final route = MaterialPageRoute(
                        builder: (context) => ListviewScreen());
                    Navigator.push(context, route);*/

                    // Navegar a otra ruta
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);

                    // Navegar a otra ruta sin poder regresar a la anterior (especial para login)
                    // Navigator.pushReplacement(context, newRoute)
                  },
                ),
            separatorBuilder: (_, __) => Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
