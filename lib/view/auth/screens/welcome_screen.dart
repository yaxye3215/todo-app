import 'package:flutter/material.dart';
import 'package:todo_app/view/widgets/btn_widget.dart';

import '../../../constants.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: size.height * 0.6,
            width: size.width,
            decoration: BoxDecoration(
              color: const Color(0xffF5E2CA),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(size.height * 0.08),
                bottomRight: Radius.circular(size.height * 0.08),
              ),
            ),
            child: Center(
              child: Image.asset("assets/task.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 26),
            child: Column(
              children: [
                Container(
                  height: 7,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xffD9D9D9).withOpacity(0.77),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.12,
                ),
                Text(
                  "Welcome",
                  style: titleStyle,
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Text(
                  "Just a click away from \n planning your task",
                  style: subTitleStyle.copyWith(
                    color: const Color(0xffBBB5B5),
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                const BtnWidget(text: "Get Started")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
