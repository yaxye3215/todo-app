import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Task {
  final String id;
  final String title;
  final String description;
  final String startTime;
  final String endTime;
  final bool isDone;
  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.isDone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'startTime': startTime,
      'endTime': endTime,
      'isDone': isDone,
    };
  }

  factory Task.fromMap(Map<String, dynamic> map) {
    return Task(
      id: map['_id'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      startTime: map['startTime'] as String,
      endTime: map['endTime'] as String,
      isDone: map['isDone'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory Task.fromJson(String source) =>
      Task.fromMap(json.decode(source) as Map<String, dynamic>);
}
