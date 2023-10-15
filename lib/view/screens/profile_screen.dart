import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/view/widgets/text_field_widget.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final numberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffEDEFF2),
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.25,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: Stack(
                children: [
                  Icon(
                    Icons.person,
                    size: 100,
                  ),
                  Positioned(
                    bottom: 0,
                    right: 2,
                    child: CircleAvatar(
                      radius: 20,
                      child: Icon(Icons.add_a_photo),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Your name",
                          style: titleStyle.copyWith(
                            color: Colors.black.withOpacity(0.65),
                            fontSize: 20,
                          ),
                        ),
                        TextFieldWidget(
                          hint: "username",
                          obSecurity: false,
                          Controller: usernameController,
                          icon: Icons.person,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Email",
                          style: titleStyle.copyWith(
                            color: Colors.black.withOpacity(0.65),
                            fontSize: 20,
                          ),
                        ),
                        TextFieldWidget(
                          hint: "email",
                          obSecurity: false,
                          Controller: emailController,
                          icon: Icons.email,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Phone",
                          style: titleStyle.copyWith(
                            color: Colors.black.withOpacity(0.65),
                            fontSize: 20,
                          ),
                        ),
                        TextFieldWidget(
                          hint: "phone",
                          obSecurity: false,
                          Controller: usernameController,
                          icon: Icons.phone_android,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.19,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xffEDEFF2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        leading: const Icon(
                          Icons.settings,
                          size: 30,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Setting",
                          style: titleStyle.copyWith(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
