

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:notesapp/pages/add_new_note.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        elevation: 0,
        automaticallyImplyLeading:false,
        title: Text("Notes App" , style: TextStyle(color:Colors.black),),centerTitle: true,
      backgroundColor: Colors.white,),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context, CupertinoPageRoute(
          fullscreenDialog: true,
          builder: (context) => AddNewPage(),),);
      },
      child: Icon(Icons.add)),
      body:SafeArea(child: Container(
    
      child: GridView.builder(
        itemCount: 5,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2 ,
        crossAxisSpacing: 10,mainAxisSpacing: 10), itemBuilder: (context, index) {
        return Container(height: 100,
        width: 100,
        color: Colors.blue,);
      },),

    )));
  }
}