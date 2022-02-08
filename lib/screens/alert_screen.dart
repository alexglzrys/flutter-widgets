import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  // Función para mostrar alerta (Diseño Android)
  displayDialogAndroid(context) {
    // ! showDialog es una función predefinida para mostrar mensajes de dialogo
    showDialog(
        barrierDismissible: false, // evitar cerrar el modal presionando fuera
        context: context,
        builder: (context) {
          // Retornar cualquier Widget que deseemos mostrar
          return AlertDialog(
            title: Text('Estimado cliente'),
            elevation: 5,
            // Colocar bordes redondeados en la alerta
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
                // ? Las columnas por defecto toman el 100% del alto del dispositivo
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                      'Es necesario que active las notificaciones para ser informado en tiempo real'),
                  SizedBox(
                    height: 10,
                  ),
                  FlutterLogo(
                    size: 80,
                  )
                ]),
            // Acciones presentes en el alerta
            actions: [
              TextButton(
                  onPressed: () {
                    // Un alert es una pantalla mas en la pila de Widgets, por tanto al sacarlo, deja ver la pantalla anterior
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Aceptar'))
            ],
          );
        });
  }

  // Función para mostrar alerta (Diseño iOS - Cupertino)
  displayDialogIOS(context) {
    // ! showDialog es una función predefinida para mostrar mensajes de dialogo
    showDialog(
        barrierDismissible: false, // evitar cerrar el modal presionando fuera
        context: context,
        builder: (context) {
          // Retornar un ALERT con el estilo nativo de Cupertino IOS
          // ! No tiene las mismas propiedades que el AlertDialog de Material
          return CupertinoAlertDialog(
            title: Text('Estimado cliente'),
            content: Column(
                // ? Las columnas por defecto toman el 100% del alto del dispositivo
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                      'Es necesario que active las notificaciones para ser informado en tiempo real'),
                  SizedBox(
                    height: 10,
                  ),
                  FlutterLogo(
                    size: 80,
                  )
                ]),
            // Acciones presentes en el alerta
            actions: [
              TextButton(
                  onPressed: () {
                    // Un alert es una pantalla mas en la pila de Widgets, por tanto al sacarlo, deja ver la pantalla anterior
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(onPressed: () {}, child: Text('Aceptar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Boton con elevación.
        // ! Si deseamos que este botón tenga su propio estilo, debemos sobre-escribir el tema original o personalizado, colocando su nueva aparencia dentro de la definción del Widget
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 13.0),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          onPressed: () {
            // Mostrar alerta (es necesario pasarle el contexto para poder dibujarlo en la ventana)
            // displayDialogAndroid(context);

            // ? Si deseamos mostrar un Widget especifico en cada plataforma es necesario importar la librería dart:io
            Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Retirar esta pantalla de la pila de navegación,
            // entonces se mostraría la última (regresar)
            Navigator.pop(context);
          },
          child: const Icon(Icons.close)),
    );
  }
}
