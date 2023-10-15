// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:todo_app/model/task_model.dart';

import '../../constants.dart';
import '../../controller/provider/task_provider.dart';

class Task_Item_Widget extends StatelessWidget {
  const Task_Item_Widget({
    Key? key,
    required this.task,
  }) : super(key: key);
  final Task task;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 10,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                task.title,
                style: titleTAskStyle,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 7),
                child: GestureDetector(
                  onTap: () {
                    Provider.of<TaskProvider>(context, listen: false)
                        .removeTask(task.id);
                  },
                  child: Icon(
                    Icons.delete,
                    color: const Color(0xffFD2222).withOpacity(0.83),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.schedule),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "8:00AM - 9:00AM",
                    style: titleTAskStyle.copyWith(
                      fontSize: 14,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Checkbox(
                fillColor: MaterialStatePropertyAll(
                  const Color(0xffD9D9D9).withOpacity(0.77),
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                value: true,
                onChanged: (value) {},
              ),
              // Container(
              //   height: 30,
              //   width: 30,
              //   decoration: BoxDecoration(
              //     color: const Color(0xffD9D9D9).withOpacity(0.77),
              //     shape: BoxShape.rectangle,
              //     borderRadius: BorderRadius.circular(5),
              //   ),
              //   child: const Icon(
              //     Icons.done,
              //     color: Colors.white,
              //   ),
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
