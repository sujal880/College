import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Input extends StatelessWidget {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField"),
        centerTitle: true,
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: TextField(
      //         // onChanged: (value){
      //         //   log(value);
      //         // },
      //         controller: emailController,
      //         keyboardType: TextInputType.text,
      //         // obscureText: true,
      //         // obscuringCharacter: "*",
      //         decoration: InputDecoration(
      //           hintText: "Enter Email",
      //           suffixIcon: Icon(Icons.mail),
      //           prefixIcon: Icon(Icons.alternate_email),
      //           border: OutlineInputBorder(
      //             borderRadius: BorderRadius.circular(4)
      //           )
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 20,),
      //     Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 20),
      //       child: TextField(
      //         // onChanged: (value){
      //         //   log(value);
      //         // },
      //         controller: passwordController,
      //         keyboardType: TextInputType.text,
      //         // obscureText: true,
      //         // obscuringCharacter: "*",
      //         decoration: InputDecoration(
      //             hintText: "Enter Email",
      //             suffixIcon: Icon(Icons.mail),
      //             prefixIcon: Icon(Icons.alternate_email),
      //             border: OutlineInputBorder(
      //                 borderRadius: BorderRadius.circular(4)
      //             )
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 20,),
      //     ElevatedButton(onPressed: (){
      //       signup(email: emailController.text, password: passwordController.text);
      //     }, child: Text("Save"))
      //   ],
      body: Stack(
        children:[ Container(
          height: 300,
          width: 300,
          color: Colors.blue,
        ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
          )
      ]
      ),
    );
  }
  signup({required String email,required String password}){
    if(email=="" || password==""){
      log("Enter Required Field's");
    }
    else{
      log("Email is ${email}");
      log("Password is ${password}");
    }
  }
}
