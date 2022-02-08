import 'package:componentes_app/router/app_routes.dart';
import 'package:componentes_app/widgets/widgets.dart';
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
                icon: Icons.ac_unit_sharp),
            // Otra forma para separar elementos, pude ser en horizantal o vertical (width)
            const SizedBox(height: 10.0),
            const CustomCardImage(
                image:
                    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dragon-ball-mejores-momentos-top-gohan-ss2-celula-1542036103.jpg',
                title: 'Son Gohan modo Super Sayayin'),
            const SizedBox(height: 35.0),
            const CustomCardImage(
                image:
                    'https://cdn.forbes.com.mx/2019/10/Captura-de-pantalla-2019-10-24-a-las-12.45.32.png',
                title: 'Goku super Sayayin 3'),
            const SizedBox(height: 35.0),
            const CustomCardImage(
              image:
                  'https://icdn.dtcn.com/image/digitaltrends_es/dragon-ball-vegeta-son-goku.jpg',
            ),
            const SizedBox(height: 35.0),
            const CustomCardImage(
                image:
                    'https://www.lacasadeel.net/wp-content/uploads/2021/12/Vegeta-Dragon-Ball-Super-700x394.jpg',
                title: 'Vegeta Buu'),
            const SizedBox(height: 35.0),
          ],
        ));
  }
}
