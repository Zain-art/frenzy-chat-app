// ignore: file_names
import 'package:flutter/material.dart';

import 'chatMessage.dart';

class ChatScreen extends StatefulWidget{
  State createState()=>ChatScreenState();
}
class ChatScreenState extends State<ChatScreen>{

  final List<chatMessage>chatmessage=<chatMessage>[];
  final TextEditingController texteditingcontroller=new TextEditingController();
  void handleSubmitted(String text){
    texteditingcontroller.clear();
    chatMessage message=new chatMessage(
      text:text
    );
    setState(() {
      chatmessage.insert(0, message);
    });
  }
Widget textComponentWidget(){
  return IconTheme(
    data:IconThemeData(color:Colors.red),
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
child:Row(
    children:<Widget>[

         TextField(
          decoration: InputDecoration.collapsed(hintText: "send a massage"),
          controller:texteditingcontroller,
          onSubmitted:handleSubmitted,
        ),

       Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        child: IconButton(
          icon:Icon(Icons.send),
          onPressed: ()=>handleSubmitted(texteditingcontroller.text),
        ),
      )
    ],
)

    ),
  );
}
  Widget build(BuildContext context){
    return Column(
      children: [
        Flexible(

            child:ListView.builder(
              padding:EdgeInsets.all(9),
              reverse:true,
              itemBuilder:(_,int index)=> chatmessage[index],
              itemCount: chatmessage.length,
            )
        ),
        Divider(
            height:4
        ),
        Container(
          decoration: BoxDecoration(
              color:Theme.of(context).cardColor
          ),
          child:textComponentWidget(),
        )
      ],
    );
  }
}
