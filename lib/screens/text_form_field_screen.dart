import 'package:components/widget/widget.dart';
import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatelessWidget {
  const TextFormFieldScreen({Key? key}) : super(key: key);

  void getChandedForm(String data) {
    print(data);
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    Map<String, String> formValues = {
      "first_name": "Pedro",
      "last_name": "Ramirez",
      "email": "pedro@gmail.com",
      "password": "132456",
      "role": "Admin",
    };

    return Scaffold(
      appBar: AppBar(title: Text("TextFormField")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormFieldCustom(
                  hintText: "nombre",
                  labelText: "introduce tu nombre",
                  helperText: "nombre",
                  formValues: 'first_name',
                  formPropiety: formValues,
                ),
                SizedBox(height: 30),

                TextFormFieldCustom(
                  hintText: "apellido",
                  helperText: "introduce tu apellido",
                  labelText: "apellido",
                  formValues: 'last_name',
                  formPropiety: formValues,
                ),
                SizedBox(height: 30),
                TextFormFieldCustom(
                  hintText: "email",
                  helperText: "introduce tu email",
                  labelText: "email",
                  keyBoardType: TextInputType.emailAddress,
                  formValues: 'email',
                  formPropiety: formValues,
                ),
                SizedBox(height: 30),
                TextFormFieldCustom(
                  hintText: "password",
                  helperText: "introduce tu password",
                  labelText: "password",
                  obscureText: true,
                  formValues: 'password',
                  formPropiety: formValues,
                ),
                SizedBox(height: 30),

                DropdownButtonFormField<String>(
                  value:"Admin",
                  items: [
                    DropdownMenuItem(value: "Admin", child: Text("Admin")),
                  ],
                  onChanged: (value) {

                    print(value);
                    formValues["role"] = value ?? "Admin";
                  },
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      print("push");
                      FocusScope.of(context).requestFocus(FocusNode()); //I use
                      if (!formKey.currentState!.validate()) return;
                      print(formValues);
                    },
                    child: Text("Guardar"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
