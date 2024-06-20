import 'dart:developer';

import 'package:collegeproject/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Test4 extends StatefulWidget {
  const Test4({super.key});

  @override
  State<Test4> createState() => _Test4State();
}

class _Test4State extends State<Test4> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        UiHelper.CustomTextField(emailController,"Enter Email",Icons.mail),
        UiHelper.CustomTextField(passwordController,"Enter Password",Icons.password),
        SizedBox(height: 30,),
        UiHelper.CustomButton(() {
          signup(emailController.text.toString(), passwordController.text.toString());
        },"Login")
      ],),
    );
  }
  signup(String email,String password)async{
    if(email=="" || password==""){
      return UiHelper.CustomAlertBox(context, "Enter Required Field's");
    }
    else{
      SharedPreferences prefs=await SharedPreferences.getInstance();
      prefs.setBool("islogin", true);
      log("Data Added");
    }
  }
}
