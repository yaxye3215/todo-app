import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEFF2),
      appBar: AppBar(
        title: const Text("Setting"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Push Notification"),
                      const Divider(),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        leading: Icon(
                          Icons.add_circle_outline,
                          size: 30,
                          color: Colors.black.withOpacity(0.65),
                        ),
                        title: Text(
                          "Add Notification",
                          style: titleStyle,
                        ),
                        trailing: Switch(
                          thumbColor:
                              const MaterialStatePropertyAll(Colors.white),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                      const Divider(),
                      ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 0),
                        leading: Icon(
                          Icons.check_circle_outline,
                          size: 30,
                          color: Colors.black.withOpacity(0.65),
                        ),
                        title: Text(
                          "Add Notification",
                          style: titleStyle,
                        ),
                        trailing: Switch(
                          thumbColor:
                              const MaterialStatePropertyAll(Colors.white),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                )
                // language
              ],
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  width: 1,
                  color: const Color(0xffE31C1C),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.logout,
                      color: Color(0xffE31C1C),
                    ),
                    Text(
                      " LogOut",
                      style: titleStyle.copyWith(
                        color: const Color(0xffE31C1C).withOpacity(0.80),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
