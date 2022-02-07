import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Componentes en Flutter'),
          backgroundColor: Colors.amberAccent,
          elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  title: Text('Nombre de ruta'),
                  leading: Icon(Icons.accessibility_sharp),
                  onTap: () {
                    print('Moviendo a otra ruta');
                  },
                ),
            separatorBuilder: (_, __) => Divider(),
            itemCount: 10));
  }
}
