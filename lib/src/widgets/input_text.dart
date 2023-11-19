import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final String hint;
  final Icon?icono;
  final TextInputType keyboard;
  final bool obsecure;
  final void Function(String? date)? onChanged;
  final String Function(String? data)? validator;
  const InputText({
    key,
    this.label = "",
    this.hint = "",
    this.icono,
    this.keyboard = TextInputType.text,
    this.obsecure = false,
    this.onChanged,
    this.validator, required Icon icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return TextFormField(
      keyboardType:keyboard,
      obscureText: obsecure,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          labelStyle: const TextStyle(
            color: Color.fromARGB(255, 32, 36, 37),
            fontFamily: "FredockaOne",
            fontSize: 25.0,
          ),
          suffixIcon: icono,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
      ),
    );
  }
}
