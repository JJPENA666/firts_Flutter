import 'package:flutter/material.dart';
import 'package:my_app/src/pages/menu_lateral.dart';
import 'package:my_app/src/widgets/input_text.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // ignore: unused_field
  late String _email;
  // ignore: unused_field
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Center(
      child: Column(
        children: <Widget>[
          InputText(
            label: "Email Address",
            hint: "Email",
            keyboard: TextInputType.emailAddress,
            icon: const Icon(Icons.verified_user),
            onChanged: (data) {
              _email = data!;
            },
            validator: (data) {
              if (data!.contains("@")) {
                return "Invalid email";
              }
              // ignore: null_check_always_fails
              return null!;
            },
          ),
          const Divider(
            height: 30.0,
          ),
          InputText(
              label: "Password",
              hint: "Password",
              obsecure: false,
              //keyboard: TextInputType.emailAddress,
              icon: const Icon(Icons.lock_clock),
              onChanged: (data) {
                _password = data!;
              },
              validator: (data) {
                // ignore: prefer_is_empty
                if (data?.trim().length == 0) {
                  return 'Invalid password';
                }
                // ignore: null_check_always_fails
                return null!;
              }),
          const Divider(
            height: 20.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 60.0,
            child: ElevatedButton(
                onPressed: () {
                  final route =
                      MaterialPageRoute(builder: (context) => MenuLateral());
                  Navigator.push(context, route);
                },
                child: const Text(
                  "Ingresar",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "FreedokaOne",
                    fontSize: 30.0,
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
