import 'package:componentes_app/models/models.dart';
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

  // Definir mi lista de rutas (esto ayuda para definir su personalización)
  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'listview',
        name: 'Componentes en Flutter',
        screen: ListviewScreen(),
        icon: Icons.access_alarm),
    MenuOption(
        route: 'listview_standar',
        name: 'ListView Standar',
        screen: ListviewStandarScreen(),
        icon: Icons.zoom_out_map),
    MenuOption(
        route: 'card',
        name: 'Card Widget',
        screen: CardScreen(),
        icon: Icons.card_giftcard),
    MenuOption(
        route: 'alert',
        name: 'Alert Widget',
        screen: AlertScreen(),
        icon: Icons.beach_access),
    MenuOption(
        route: 'avatar',
        name: 'Circle Avatar Widget',
        screen: AvatarScreen(),
        icon: Icons.supervised_user_circle)
  ];

  /*static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => HomeScreen(),
    'listview': (BuildContext context) => ListviewScreen(),
    'listview_standar': (BuildContext context) => ListviewStandarScreen()
  };*/

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    // iterar por los elementos de opciones de menu
    for (final option in menuOptions) {
      // Generar un path como lo espera la propiedad routes
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // print(settings);
    // Retornar una ruta con la pantalla en cuestion
    return MaterialPageRoute(builder: (context) => ListviewStandarScreen());
  }
}
