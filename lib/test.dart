import 'package:flutter/material.dart';

void main(){
  runApp(Test());
}
class Test extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget{
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("First Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.red,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Center(child: Text("Hello World!!")),
        ),
      )
    );
  }

}