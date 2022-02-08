import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  String title;
  String description;
  IconData icon;

  // Los parámetros del titulo, descripción e icono son obligatorios
  CustomCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // Symmetric permite especificar valores iguales en horizontal o vertical
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // Padding permite colocar un padding a su Widget hijo
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: [
            ListTile(
                leading: Icon(
                  icon,
                  color: AppTheme.primary,
                ),
                // Separar el tìtulo del subititulo
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(title),
                ),
                subtitle: Text(description)),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text('Cancelar')),
                  TextButton(onPressed: () {}, child: Text('Aceptar'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
