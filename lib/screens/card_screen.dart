import 'package:componentes_app/router/app_routes.dart';
import 'package:componentes_app/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Card Widget')),
        body: ListView(
          children: [
            // Se recomienda separar en archivos o clases separadas aquellos Widget que por su naturaleza son complejos en cuanto a estructura
            CustomCard(
                title: 'Soy un Titulo',
                description:
                    'Esta es una descripción algo corta para el contenido principal de mi tarjeta',
                icon: Icons.card_giftcard_outlined),
            CustomCard(
                title: 'Otro elemento',
                description:
                    'Este es el contenido de otra card cuyo Widget fue separado en un archivo independiente para un mejor control del código',
                icon: Icons.ac_unit_sharp)
          ],
        ));
  }
}
