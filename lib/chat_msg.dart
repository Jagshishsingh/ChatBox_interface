import 'package:flutter/material.dart';


class ChatMessage extends StatelessWidget {
  final String text;
  ChatMessage({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.only(right: 10.0),
      child: new Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new CircleAvatar(
            backgroundColor: Colors.blue[600],
            foregroundColor: Colors.deepOrangeAccent,
            child: new Text("J"),
          ),
          new Padding(padding: const EdgeInsets.only(right: 16.0),),
          new Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Text("J Balvin",style: new TextStyle(fontSize: 20.0,color: Colors.deepOrangeAccent),),
              new Padding(padding: const EdgeInsets.only(top: 5.0),),
              new Text(text),
            ],
          ),
        ],
      ),
    );
  }
}