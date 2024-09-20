import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_crud/models/todo.dart';

const String TO_DO_COLLECTION_REF = 'preferences';

class DatabaseService{
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference _todoRef;

  DatabaseService(){
    _todoRef = _firestore.collection(TO_DO_COLLECTION_REF).withConverter<Todo>(
      fromFirestore: (snapshots , _) => Todo.fromJson(
        snapshots.data()!,
      ), 

      toFirestore: (todo, _) => todo.toJson());
  }
}