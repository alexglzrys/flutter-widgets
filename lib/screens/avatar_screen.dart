import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            // ! CircleAvatar puede recibir cualquier tipo de Widget, sin embargo, generalmente se le usa para colocar imagenes de fondo
            child: CircleAvatar(
              child: const Text('SJ'),
              backgroundColor: Colors.teal[700],
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          // Los avatars por naturaleza son pequeños, pero podemos aumentar el tamaño si modificamos su radio
          // ? No se puede usar un FadeInImage en los Circle Avatars, pero podemos emularlo usando un Circle, FadeInImage y una NetworkImage
          maxRadius: 100,
          backgroundImage: NetworkImage(
              'https://cdn.cienradios.com/wp-content/uploads/sites/13/2015/02/steve-jobs.jpg'),
        ),
      ),
    );
  }
}
