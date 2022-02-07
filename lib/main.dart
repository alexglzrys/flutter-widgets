import 'package:componentes_app/router/app_routes.dart';
import 'package:componentes_app/theme/app_theme.dart';
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
        initialRoute: AppRoutes.initialRoute,
        // El listado de rutas requiere una ruta y un componente a mostrar para esa ruta
        routes: AppRoutes.getAppRoutes(),
        // Permite atrapar rutas dinàmicas (las cuales no estàn declaradas en el listado de routes)
        onGenerateRoute: AppRoutes.onGenerateRoute,

        // ? Flutter permite definir un tema principal para nuestra App, si embargo, se recomienda hacer una copia de uno que ya se tenga por defecto por que son muchas cosas que se tienen que especoficar para cada widget que existe en Flutter
        // Todos los componentes que no tengan definido explicitamente una propiedad de tema específico, se verán afectados por esta configuración Global
        theme: AppTheme.lightTheme);
  }
}
