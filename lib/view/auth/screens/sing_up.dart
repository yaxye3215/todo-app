import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../widgets/btn_widget.dart';
import '../../widgets/logo_widget.dart';
import '../../widgets/text_field_widget.dart';

class SingUpScreen extends StatefulWidget {
  const SingUpScreen({super.key});

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: size.height * 0.3,
                width: size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffF5E2CA),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(size.height * 0.15),
                    bottomRight: Radius.circular(size.height * 0.15),
                  ),
                ),
                child: Center(
                  child: Image.asset("assets/task.png"),
                ),
              ),
              SizedBox(
                height: size.height * 0.07,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Text(
                      "Sign Up Now",
                      style: titleStyle,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextFieldWidget(
                      hint: "Email",
                      obSecurity: false,
                      Controller: emailController,
                      icon: Icons.email,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldWidget(
                      hint: "Username",
                      obSecurity: false,
                      Controller: usernameController,
                      icon: Icons.person,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldWidget(
                      hint: "Password",
                      obSecurity: true,
                      Controller: passwordController,
                      icon: Icons.lock,
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const BtnWidget(
                        text: "Sing Up",
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.07,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        LogoWidget(img: "assets/fb.png"),
                        SizedBox(
                          width: 20,
                        ),
                        LogoWidget(img: "assets/ggl.png"),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: subTitleStyle,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            " Sing In!",
                            style: subTitleStyle.copyWith(
                                color: const Color(0xffE4B476)),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
