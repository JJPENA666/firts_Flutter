import 'package:flutter/material.dart';
import 'package:my_app/src/widgets/input_text.dart';


class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm>{
  // ignore: unused_field
  late String _email;
  // ignore: unused_field
  late String _name;
  // ignore: unused_field
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Center(
      child: Column(
        children: <Widget>[
          InputText(
              hint: "Email Addres",
              label: "Email",
              keyboard: TextInputType.emailAddress,
              icon: const Icon(Icons.verified_user),
              onChanged: (data) {
                _email = data!;
              },
              validator: (data) {
                if (data!.contains("@")) {
                  return 'email invalid';
                }
                // ignore: null_check_always_fails
                return null!;
              }),
          const Divider(
            height: 50.0,
          ),
          InputText(
              hint: "Name",
              label: "Name",
              icon: const Icon(Icons.verified_user),
              onChanged: (data) {
                _name = data!;
              },
              validator: (data) {
                if (data!.contains("@")) {
                  return 'Name not invalid';
                }
                // ignore: null_check_always_fails
                return null!;
              }),
          const Divider(
            height: 50.0,
          ),
          InputText(
              hint: "Password",
              label: "Password",
              obsecure: false,
              icon: const Icon(Icons.lock_clock),
              onChanged: (data) {
                _password = data!;
              },
              validator: (data) {
                // ignore: prefer_is_empty
                if (data?.trim().length == 0) {
                  return 'Password invalid';
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
              onPressed: () {},
              child: const Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "FreedokaOne",
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}