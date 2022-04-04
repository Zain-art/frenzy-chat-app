import 'package:flutter/material.dart';
import 'package:material_chat_app/ChatScreen.dart';

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: implement build
      appBar:AppBar(
        title: Text("Frenzy App"),
      ),
      body: ChatScreen(),
    );

  }
}