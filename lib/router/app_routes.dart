import 'package:componentes_app/screens/screens.dart';
import 'package:flutter/material.dart';

/**
 * Clase para definir la ruta principal, rutas de la aplicación y rutas dinámicas
 * 
 * Se recomienda que los métoos sean estaticos para no tener que instanciar la clase
 * 
 * El AppRouter es un archivo recomendado para prevenir que el punto inicial de nuestra aplicación
 * se inmantenible a mediano plazo
 */

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => HomeScreen(),
    'listview': (BuildContext context) => ListviewScreen(),
    'listview_standar': (BuildContext context) => ListviewStandarScreen()
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // print(settings);
    // Retornar una ruta con la pantalla en cuestion
    return MaterialPageRoute(builder: (context) => ListviewStandarScreen());
  }
}
