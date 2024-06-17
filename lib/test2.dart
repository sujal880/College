import 'package:flutter/material.dart';
class Test2 extends StatefulWidget{
  @override
  State<Test2> createState() => _Test2State();
}

class _Test2State extends State<Test2> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
        centerTitle: true,
      ),
      body: Center(child: Text(count.toString()),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          count++;
        });
      },child: Icon(Icons.add),),
    );
  }
}