// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF8EBDA),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          text,
          style: titleStyle.copyWith(
            color: const Color(0xff524E48),
          ),
        ),
      ),
    );
  }
}
