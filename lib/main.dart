import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Import the firebase_options.dart

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: const FirebaseOptions(
    apiKey: 'AIzaSyBdyS3kMgW6x6CwbIcyqrvUpHZBHGZz75s',
    appId: '1:719294928545:android:6e8dc40eefa0455a5d42e0',
    messagingSenderId: 'sendid',
    projectId: 'fir-crud-9746a',
  )
);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firestore CRUD Example'),
        ),
        body: Center(child: Text('Firestore CRUD Example')),
      ),
    );
  }
}
