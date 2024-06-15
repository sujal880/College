import 'package:collegeproject/test1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Test());
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "First App",
      home: Test1(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("First Screen",style: TextStyle(fontFamily: "sans",color: Colors.white),),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.blue,
            ),
            Container(
              height: 100,
              width: 200,
              color: Colors.red,
            ),


          ],),
        ),
        // body: Center(
        //   child: Container(
        //     clipBehavior: Clip.antiAlias,
        //     height: 200,
        //     width: 200,
        //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
        //     // child: Image.asset("assets/images/sujal.jpg",fit: BoxFit.cover,),
        //     child: Image.network(
        //       "https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?cs=srgb&dl=pexels-anjana-c-169994-674010.jpg&fm=jpg",
        //       fit: BoxFit.cover,
        //     ),
        //   ),
        // ));
    );
  }
  //https://media.geeksforgeeks.org/wp-content/uploads/20201026003622/ezgifcomgifmaker3.gif
}
