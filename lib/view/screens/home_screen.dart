import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_app/constants.dart';
import 'package:todo_app/controller/provider/task_provider.dart';
import 'package:todo_app/model/task_model.dart';

import 'package:todo_app/view/screens/add_task_screen.dart';

import '../widgets/task_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Task> tasks = [];
  void createTask() async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const AddTaskScreen(),
      ),
    );
    setState(() {
      tasks = Provider.of<TaskProvider>(context, listen: false).tasks;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xffEDEFF2),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50, top: 70),
          child: Column(
            children: [
              // person section
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                  leading: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xffF5E2CA),
                    child: Icon(Icons.person),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi' Yahye Ataa",
                        style: titleStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Good Marring",
                        style: subTitleStyle.copyWith(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // search section
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search your list",
                      hintStyle: textfieldStyle.copyWith(
                        color: Colors.black.withOpacity(0.20),
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.black.withOpacity(0.20),
                      )),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // add task section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 5,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  GestureDetector(
                    onTap: createTask,
                    child: SizedBox(
                      child: Image.asset(
                        "assets/plus.png",
                      ),
                    ),
                  ),
                  Container(
                    height: 5,
                    width: size.width * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // item task
              Expanded(
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Task_Item_Widget(
                        task: tasks[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
