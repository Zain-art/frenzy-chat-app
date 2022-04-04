import 'package:flutter/material.dart';
const String _name="zain khan";
class chatMessage extends StatelessWidget{
  final String text;
  chatMessage({required this.text});
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Container(
            margin: const EdgeInsets.only(right:16.0),
            child:CircleAvatar(
              child:Text(_name[0]),
            )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(_name,style: Theme.of(context).textTheme.subtitle1,),
              Container(
                margin: const EdgeInsets.only(top:9),
                child:Text(text),
              )
            ],
          )
        ],
      ),
    );
  }
}