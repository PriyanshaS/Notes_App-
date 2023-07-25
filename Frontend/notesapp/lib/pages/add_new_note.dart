

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  FocusNode noteFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.check)]),
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          children: [
            TextField(
              onEditingComplete: () =>NextFocusAction(),
              style: TextStyle(fontSize: 30),
              autofocus: true,
              onSubmitted: (value) {
                if(value!=null){
                  noteFocus.requestFocus();
                }
              },
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText:'Title',
                hintStyle: TextStyle(fontSize: 30,
                 
                )
              ),
            ),
             Expanded(
               child: TextField(
                maxLines: null,
                focusNode: noteFocus,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText:'Note',
                  hintStyle: TextStyle(fontSize: 20,
                  
                  )
                ),
                       ),
             )
          ],
        ),
      )),

    );
  }
}