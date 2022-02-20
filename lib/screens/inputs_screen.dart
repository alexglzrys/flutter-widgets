import 'package:componentes_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Declarar una referencia a el formulario medainte un Global Key, esto permite tener acceso a el estado del formulario, es decir sus valores, validaciones, etc.
    final myFormKey = GlobalKey<FormState>();

    // Declarar el modelo o estado inicial de mi formulario
    final Map<String, String> formValues = {
      'first_name': 'Alejandro',
      'last_name': 'González Reyes',
      'email': 'alejandro@correo.com',
      'password': '123456',
      'role': 'admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      // ! En campos de formulario se tiene que prever que su contendor sea de tipo Scroll ya que el teclado empuja el contenido fuera del área visible de la pantalla
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          //  ? Flutter sabe que un widget de tipo Form contiene widgets de tipo Input, por tanto sabe inferir su valor y su validación
          child: Form(
            //  * Todos los widgets en Flutter tienen ahora un key para identificarlos. Esto permite tener acceso completo a el desde otras partes del código.
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Ingrese su nombre',
                  helperText: 'Solo textos y espacios',
                  suffixIcon: Icons.person,
                  formProperty: 'first_name',
                  formValues: formValues,
                ),
                SizedBox(height: 15),
                CustomInputField(
                  labelText: 'Apellidos',
                  hintText: 'Ingrese sus apellidos',
                  helperText: 'Solo textos y espacios',
                  suffixIcon: Icons.person,
                  formProperty: 'last_name',
                  formValues: formValues,
                ),
                SizedBox(height: 15),
                CustomInputField(
                  labelText: 'Correo electrónico',
                  hintText: 'Ingrese su correo electrónico',
                  helperText: 'Solo textos y espacios',
                  suffixIcon: Icons.email,
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email',
                  formValues: formValues,
                ),
                SizedBox(height: 15),
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Ingrese su contraseña',
                  helperText: 'Solo textos y espacios',
                  suffixIcon: Icons.password,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                SizedBox(height: 15),
                // Select
                DropdownButtonFormField<String>(
                  // Options
                  items: [
                    DropdownMenuItem(
                      child: Text('Admin'),
                      value: 'Admin',
                    ),
                    DropdownMenuItem(
                      child: Text('Developer'),
                      value: 'Developer',
                    ),
                    DropdownMenuItem(
                      child: Text('Project Leader'),
                      value: 'Project Leader',
                    ),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  },
                  value: 'Admin',
                ),

                SizedBox(height: 15),
                ElevatedButton(
                    onPressed: () {
                      // * Ocultar el teclado tras presionar el boton
                      FocusScope.of(context).requestFocus(FocusNode());

                      // ? Verificar que el estado del formulario sea valido
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }

                      print(formValues);
                    },
                    child: SizedBox(
                      width: double.infinity,
                      height: 18.0,
                      child: Text(
                        'Guardar',
                        textAlign: TextAlign.center,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
