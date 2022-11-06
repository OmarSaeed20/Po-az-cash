import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(

    ),floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ), );

  }

  Future<void> saveUserData() async {
    await FirebaseFirestore.instance.collection('Users').doc().set({
      "name": "Omar Saeed",
    }).then((value) {
      debugPrint("Success");
    });
  }

  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      saveUserData();
      _counter++;
    });
  }
}
