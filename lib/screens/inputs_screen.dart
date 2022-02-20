import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      // ! En campos de formulario se tiene que prever que su contendor sea de tipo Scroll ya que el teclado empuja el contenido fuera del área visible de la pantalla
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              TextFormField(
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
                    labelText: 'Nombre',
                    hintText: 'Ingrese su nombre completo',
                    helperText: 'Solo letras y espacios',
                    suffixIcon: Icon(Icons.person),
                    icon: Icon(Icons.youtube_searched_for_outlined),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
