import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardImage extends StatelessWidget {
  final String image;
  final String? title; // El titulo va ha ser opcional

  const CustomCardImage({
    Key? key,
    required this.image,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      // Especificar que el contendio de la tarjeta se debe cortar si este se desborda
      clipBehavior: Clip.antiAlias,
      // Alterar la forma original de la tarjeta
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40))),
      // Colocar color de fondo con opacidad a la tarjeta
      shadowColor: AppTheme.primary.withOpacity(0.5),
      child: Column(
        children: [
          /*Image(
              image: NetworkImage(
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dragon-ball-mejores-momentos-top-gohan-ss2-celula-1542036103.jpg'))*/

          // Cuando las imagenes son de recursos externos o tiene un tamaño grande
          // Se recomienda usar un FadeInImage, el cual da la posibilidad de colocar una imagen de carga
          // ! Para ello es necesario especificar su registro en el archivo pubspec.yaml e invocarla en el path placeholder
          FadeInImage(
            placeholder: AssetImage('assets/images/jar-loading.gif'),
            image: NetworkImage(image),

            // ? Evitar problema de salto de imagen cuando termina de cargar (loader e imagen con tamaños diferentes)
            // Tomar el ancho máximo del elemento padre
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            // Especificar el tiempo de la animación
            fadeInDuration: const Duration(milliseconds: 300),
          ),

          // Si no conteine titulo, no mostramos este Widget
          if (title != null)
            Container(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 15.0),
                // Alinear el contenido del Contenedor
                alignment: AlignmentDirectional.centerEnd,
                // Alternativa al ?? puede ser que le indiquemos que confie en nosotros, esa propiedad ya la estamos evaluando en el condicional
                // Y en este punto debe existir title!
                child: Text(title ?? '')),
        ],
      ),
    );
  }
}
