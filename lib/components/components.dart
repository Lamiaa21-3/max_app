import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  TextFieldComponent(
      {Key? key,
      required this.controller,
      required this.hintText,
      required this.labelText,
      required this.icon,
      required this.validation})
      : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final Icon icon;
  final  String? Function(String?)? validation;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validation,
      decoration: InputDecoration(
          fillColor: Colors.grey[200],
          filled: true,
          prefixIconColor: Colors.black,
          prefixIcon: icon,
          hintText: hintText,
          labelText: labelText,

          labelStyle: TextStyle(color: Colors.black),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.indigo),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
