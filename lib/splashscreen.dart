import 'dart:async';

import 'package:collegeproject/firstscreen.dart';
import 'package:collegeproject/test3.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), ()async{
      SharedPreferences prefs=await SharedPreferences.getInstance();
      bool? check=prefs.getBool("islogin");
      if(check!=null){
        if(check){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>FirstScreen()));

        }
        else{
          Navigator.push(context,MaterialPageRoute(builder: (context)=>Test4()));
        }
      }
      else{
        Navigator.push(context,MaterialPageRoute(builder: (context)=>Test4()));
      }
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.person,size: 90,),),
    );
  }
}
