import 'package:collegeproject/secondscreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
        }, child: Text("Next Page")),
      ),
    );
  }
}
