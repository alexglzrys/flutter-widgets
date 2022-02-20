import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;

  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.suffixIcon,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      // ? Especial si deseamos que las palabras ingresadas sean con letra inicial en Mayúscula (Nombres)
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print('Valor: $value');
      },
      // ? Validar el contenido de esta caja de texto
      validator: (value) {
        if (value == '') return 'Este campo es obligatorio';
        return value!.length < 6
            ? 'Este campo debe tener al menos 6 caracteres'
            : null;
      },
      // ? Lanzar la validación
      autovalidateMode: AutovalidateMode.onUserInteraction,
      // ! Los campos de texto se pueden decorar con labels, placeholder, iconos, bordes, y textos de ayuda
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        helperText: helperText,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
        icon: icon == null ? null : Icon(icon),
        // ? Temas como la decoración, se deben agrupar en un archivo global de estilos para centralizar la apariencia de la aplicación
        /*border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10))),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.green))*/
      ),
    );
  }
}
