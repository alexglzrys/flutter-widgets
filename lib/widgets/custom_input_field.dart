import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final IconData? suffixIcon;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty; // Identificador del control de formulario
  final Map<String, String>
      formValues; // El modelo que deseo gestionar mediante el formulario

  const CustomInputField({
    Key? key,
    this.labelText,
    this.hintText,
    this.helperText,
    this.suffixIcon,
    this.icon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      // ? Especial si deseamos que las palabras ingresadas sean con letra inicial en Mayúscula (Nombres)
      textCapitalization: TextCapitalization.words,
      // ? Podemos cambiar el tipo de teclado con base al tipo de entrada que acepta el campo
      keyboardType: keyboardType,
      // ? propiedad para ocultar el contenido del campo (password), por defecto esta en falso
      obscureText: obscureText,
      // ? gestionar el valor ingresado en esta caja de formulario
      onChanged: (value) {
        // Asignar a la propiedad correcta en el modelo, el valor de esta caja de texto
        formValues[formProperty] = value;
        //print('Valor: $value');
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
