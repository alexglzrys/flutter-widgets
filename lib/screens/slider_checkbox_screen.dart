import 'package:componentes_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderCheckboxScreen extends StatefulWidget {
  const SliderCheckboxScreen({Key? key}) : super(key: key);

  @override
  State<SliderCheckboxScreen> createState() => _SliderCheckboxScreenState();
}

// ! El componente slider necesita redibujarse con base a sus nuevos valores.
// ? Por tanto necesita de un StatefulWidget
class _SliderCheckboxScreenState extends State<SliderCheckboxScreen> {
  double _valueSlider = 150;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider y Checkbox'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // * Se debe especificar un valor mìnimo y màximo para el control deslizante
              // ! Muchos widget cuentan con el constructor "adaptive", el cual se encarga de dibujar el elemento con base a la guia de estilos de cada plataforma. Recibe los mismos parámetros que el constructor normal
              Slider.adaptive(
                  min: 100,
                  max: 300,
                  value: _valueSlider,
                  activeColor: AppTheme.primary,
                  // Actualizar el estado del elemento
                  //  ? El elemento se actualizará con base al valor de otra variable de estado (si se puede o no cambiar)
                  onChanged: _sliderEnabled
                      ? (value) {
                          _valueSlider = value;
                          print(value);
                          setState(() {});
                        }
                      : null),
              // ! Los checkbox son elementos que cambian de estilo cuando son activados o desactivados, por tanto necesitan redibujarse con la ayuda de un StatefulWidget
              Checkbox(
                  activeColor: AppTheme.primary,
                  value: _sliderEnabled,
                  onChanged: (value) {
                    _sliderEnabled = value ?? true;
                    setState(() {});
                  }),
              CheckboxListTile(
                  activeColor: AppTheme.primary,
                  title: Text('Desactivar el slider'),
                  value: _sliderEnabled,
                  onChanged: (value) {
                    _sliderEnabled = value ?? true;
                    setState(() {});
                  }),
              Switch.adaptive(
                  activeColor: AppTheme.primary,
                  value: _sliderEnabled,
                  onChanged: (value) {
                    _sliderEnabled = value;
                    setState(() {});
                  }),
              // ? Existen los clásicos checkbox, pero este es el que tiene un mejor estilo. Además reciben los mismos parámetros. solo que en los switch siempre tienen un valor
              SwitchListTile.adaptive(
                  activeColor: AppTheme.primary,
                  title: Text('Habilidar slider'),
                  value: _sliderEnabled,
                  onChanged: (value) {
                    _sliderEnabled = value;
                    setState(() {});
                  }),
              Image(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/87/b2/0c/87b20c17970ff0c620d8e4c15c26d6bb.png'),
                width: _valueSlider,
                fit: BoxFit.contain,
              )
            ],
          ),
        ),
      ),
    );
  }
}
