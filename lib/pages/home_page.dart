import 'package:flutter/material.dart';
import 'package:flutter_crud/services/database_service.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  final DatabaseService _databaseService = DatabaseService();
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: _appBar(),
    );
    
  }
  
  PreferredSizeWidget _appBar(){
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      title: const Text(
        "Todo",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
    );
  }
}