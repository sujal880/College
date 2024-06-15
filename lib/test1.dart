import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  var arrContent=[
    {
      "name":"Lorem Ipsum1",
      "address":"address Ipsum1"
    },
    {
      "name":"Lorem Ipsum2",
      "address":"address Ipsum2"
    }, {
      "name":"Lorem Ipsum3",
      "address":"address Ipsum3"
    }, {
      "name":"Lorem Ipsum4",
      "address":"address Ipsum4"
    }, {
      "name":"Lorem Ipsum5",
      "address":"address Ipsum5"
    }, {
      "name":"Lorem Ipsum1",
      "address":"address Ipsum1"
    }, {
      "name":"Lorem Ipsum1",
      "address":"address Ipsum1"
    }, {
      "name":"Lorem Ipsum1",
      "address":"address Ipsum1"
    }, {
      "name":"Lorem Ipsum1",
      "address":"address Ipsum1"
    }, {
      "name":"Lorem Ipsum1",
      "address":"address Ipsum1"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        backgroundColor: Colors.blue,
        centerTitle: true ,
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return ListTile(
          leading: CircleAvatar(
            child: Text("${index+1}"),
          ),
          title: Text(arrContent[index]['name'].toString()),
          subtitle: Text(arrContent[index]["address"].toString()),
          trailing: Icon(Icons.add),
        );
        // return Container(
        //   height: 100,
        //   width: 100,
        //   child: Column(children: [
        //     Text(arrContent[index]["name"].toString()),
        //     Text(arrContent[index]["address"].toString()),
        //
        //   ],),
        // );
      },itemCount: arrContent.length,),
    );
  }
}
