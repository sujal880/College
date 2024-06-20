import 'package:flutter/material.dart';
class UiHelper{
  static CustomTextField(TextEditingController controller,String text,IconData icondata){
   return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 15),
     child: TextField(
       controller: controller,
       decoration: InputDecoration(
         hintText: text,
         suffixIcon: Icon(icondata),
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8)
         )
       ),
     ),
   );
  }

  static CustomButton(VoidCallback callback,String text){
    return ElevatedButton(onPressed: (){
      callback();
    }, child: Text(text));
  }

  static CustomAlertBox(BuildContext context,String text){
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text(text),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("ok"))
        ],
      );
    });
  }
}