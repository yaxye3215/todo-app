import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/view/auth/screens/sing_up.dart';
import 'package:todo_app/view/widgets/text_field_widget.dart';

import '../../widgets/btn_widget.dart';
import '../../widgets/logo_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
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
                      "Sign In Now",
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
                      hint: "Password",
                      obSecurity: true,
                      Controller: passwordController,
                      icon: Icons.lock,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // remember me and forget password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              fillColor: const MaterialStatePropertyAll(
                                Color(0xffEDEFF2),
                              ),
                              side: BorderSide.none,
                              value: false,
                              onChanged: (value) {},
                            ),
                            Text(
                              'Remember me',
                              style: subTitleStyle,
                            ),
                          ],
                        ),
                        Text(
                          "Forget password?",
                          style: subTitleStyle.copyWith(
                            color: Colors.red[200],
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: size.height * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const BtnWidget(
                        text: 'Login',
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
                          "don't have account?",
                          style: subTitleStyle,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SingUpScreen(),
                              ),
                            );
                          },
                          child: Text(
                            " Create At!",
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
