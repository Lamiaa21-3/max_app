import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  TextFieldComponent({
    Key? key,
    required this.controller,
   required this.hintText,
    required this.labelText,
   required this.icon,
    required this.validation,
   required this.obscureText, required this.keyboardType, required this.focusNode, required this.onSubmited,
  })
      : super(key: key);
  final TextEditingController? controller;
  final String hintText;
  final bool obscureText;
  final String labelText;
  final IconButton icon;
  final  String? Function(String?)? validation;
  final TextInputType keyboardType;
  final FocusNode? focusNode;
  final String? Function(String?)? onSubmited;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: onSubmited,
      focusNode: focusNode,
      keyboardType: keyboardType,
      obscureText:obscureText ,
      validator: validation,
      controller: controller,
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
