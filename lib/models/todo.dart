
import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  late String task;
  late bool isDone;
  late Timestamp createdOn;
  late Timestamp updatedOn;


  Todo({
    required this.task,
    required this.isDone,
    required this.createdOn,
    required this.updatedOn,

  });

  Todo.fromJson(Map<String, Object?> json)
    : this(

        task: json['task']! as String,
        isDone: json['isDone']! as bool,
        createdOn: json['createdOn']! as Timestamp,
        updatedOn: json['updatedOn']! as Timestamp,

    );

}