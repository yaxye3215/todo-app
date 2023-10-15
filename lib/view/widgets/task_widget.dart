// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({
    Key? key,
    required this.text,
    required this.title,
    required this.controller,
  }) : super(key: key);

  final String text;
  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle.copyWith(
            color: Colors.black.withOpacity(0.65),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xffEDEFF2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintText: text,
              hintStyle: textfieldStyle,
            ),
          ),
        ),
      ],
    );
  }
}
