import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/controller/provider/task_provider.dart';
import 'package:todo_app/model/task_model.dart';
import 'package:todo_app/view/widgets/btn_widget.dart';

import '../widgets/task_widget.dart';
import '../widgets/time_task_widget.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final startTimeController = TextEditingController();
  final endTimeController = TextEditingController();
  List<Color> itemColors = [
    const Color(0xffFAD2D2),
    const Color(0xffF2C552),
    const Color(0xff5486E9),
    const Color(0xff81DF96),
    const Color(0xffE0BBF8),
  ];
  void addTask() async {
    Provider.of<TaskProvider>(context, listen: false).addTask(
      Task(
        id: DateTime.now().second.toString(),
        title: titleController.text,
        description: descriptionController.text,
        startTime: DateTime.now().hour.toString(),
        endTime: DateTime.now().hour.toString(),
        isDone: false,
      ),
    );
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffF5E2CA),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              height: size.height * 0.2,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Add Task",
                  style: titleStyle.copyWith(
                    fontSize: 36,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            // add task section
            Expanded(
              child: Container(
                height: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // title section
                      TaskWidget(
                        controller: titleController,
                        title: "Task Name",
                        text: "Enter task name",
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // time Section
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Start Time",
                                style: titleStyle.copyWith(
                                  color: Colors.black.withOpacity(0.65),
                                ),
                              ),
                              TimeFieldWidget(
                                text: "Start Time",
                                size: size,
                                startTimeController: startTimeController,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "End Time",
                                style: titleStyle.copyWith(
                                  color: Colors.black.withOpacity(0.65),
                                ),
                              ),
                              TimeFieldWidget(
                                text: "End Time",
                                size: size,
                                startTimeController: endTimeController,
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 20,
                      ), //color section
                      Text(
                        "Color",
                        style: titleStyle.copyWith(
                          color: Colors.black.withOpacity(0.65),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: itemColors.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: itemColors[index],
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      //description section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "description",
                            style: titleStyle.copyWith(
                              color: Colors.black.withOpacity(0.65),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                              color: const Color(0xffEDEFF2),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextField(
                              controller: descriptionController,
                              maxLines: 5,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                hintText: "content..",
                                hintStyle: textfieldStyle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.05,
                      ),
                      // add bottom
                      GestureDetector(
                        onTap: addTask,
                        child: const BtnWidget(text: "Add Task"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
