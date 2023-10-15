// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.hint,
    required this.obSecurity,
    required this.Controller,
    required this.icon,
  }) : super(key: key);
  final String hint;
  final bool obSecurity;
  // ignore: non_constant_identifier_names
  final TextEditingController Controller;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: const Color(0xffEDEFF2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: Controller,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.white,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hint,
          hintStyle: textfieldStyle,
        ),
      ),
    );
  }
}
