import 'package:componentes_app/widgets/widgets.dart';
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
              CustomInputField(
                labelText: 'Nombre',
                hintText: 'Ingrese su nombre',
                helperText: 'Solo textos y espacios',
                suffixIcon: Icons.person,
              ),
              SizedBox(height: 15),
              CustomInputField(
                labelText: 'Apellidos',
                hintText: 'Ingrese sus apellidos',
                helperText: 'Solo textos y espacios',
                suffixIcon: Icons.person,
              ),
              SizedBox(height: 15),
              CustomInputField(
                labelText: 'Correo electrónico',
                hintText: 'Ingrese su correo electrónico',
                helperText: 'Solo textos y espacios',
                suffixIcon: Icons.email,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 15),
              CustomInputField(
                labelText: 'Contraseña',
                hintText: 'Ingrese su contraseña',
                helperText: 'Solo textos y espacios',
                suffixIcon: Icons.password,
                obscureText: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
