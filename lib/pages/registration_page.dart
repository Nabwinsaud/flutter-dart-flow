import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  // how to fix cant have modifier 'const' here?
  String? _firstname;
  String? _email;
  int? _phone;
  String? _password;
  String? datetime;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width - 10;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
        // centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  autocorrect: true,
                  validator: (value) {
                    if (value == null) return "Name is required";
                    if (value.length < 3) {
                      return "Name must be at least 3 characters";
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: "Name",
                    hintText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                    autocorrect: true,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "phone",
                      hintText: "Enter your phone number",
                      border: OutlineInputBorder(),
                    ),
                    // onSaved used for saving the value of the field at the time of form submission
                    onSaved: ((newValue) => _firstname = newValue),
                    onChanged: ((value) => _firstname = value)),
                // onChanged is used to get the value of the field as the user types
                const SizedBox(height: 20),
                TextFormField(
                  autocorrect: true,
                  // enableSuggestions: true,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (String newValue) => _email = newValue,
                  decoration: const InputDecoration(
                    labelText: "email",
                    hintText: "Enter email ",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  autocorrect: true,
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    labelText: 'date',
                    hintText: "2003-04-10",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  autocorrect: true,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter your password",
                    labelText: "password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      minimumSize: Size(screenWidth, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      )
                      // shape: const RoundedRectangleBorder(
                      // borderRadius: BorderRadius.all(Radius.circular(10)),
                      // ),
                      ),
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 22),
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
