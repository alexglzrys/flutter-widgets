import 'package:flutter/material.dart';

// Este paquete exporta todos los componentes a usar como pantallas de nuestra aplicación
// Evita el tener que hacer muchos imports en esta sección
import 'package:componentes_app/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: ListviewScreen()

      // Cuando se trabaja con rutas no hay un home inicial, existe una ruta inicial
      initialRoute: 'home',
      // El listado de rutas requiere una ruta y un componente a mostrar para esa ruta
      routes: {
        'home': (BuildContext context) => HomeScreen(),
        'listview': (BuildContext context) => ListviewScreen(),
        'listview_standar': (BuildContext context) => ListviewStandarScreen()
      },
      // Permite atrapar rutas dinàmicas (las cuales no estàn declaradas en el listado de routes)
      onGenerateRoute: (settings) {
        print(settings);
        // Retornar una ruta con la pantalla en cuestion
        return MaterialPageRoute(builder: (context) => ListviewStandarScreen());
      },
    );
  }
}
