// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../constants.dart';

class TimeFieldWidget extends StatelessWidget {
  const TimeFieldWidget({
    Key? key,
    required this.size,
    required this.text,
    required this.startTimeController,
  }) : super(key: key);

  final Size size;
  final String text;
  final TextEditingController startTimeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xffEDEFF2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: startTimeController,
        decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: text,
            hintStyle: textfieldStyle,
            suffixIcon: const Icon(Icons.schedule)),
      ),
    );
  }
}
