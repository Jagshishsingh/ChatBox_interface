import 'package:flutter/material.dart';
import 'chat_msg.dart';
class ChatBody extends StatefulWidget {
  @override
  _ChatBodyState createState() => _ChatBodyState();
}

class _ChatBodyState extends State<ChatBody> {
  final TextEditingController textController = new TextEditingController();
  final List<ChatMessage> message_list = <ChatMessage>[];

  void button_sent(String text){
    textController.clear();
    ChatMessage message = new ChatMessage(text:text);
    setState(() {
      message_list.insert(0,message);
    });
    
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: new Column(
        children: <Widget>[
          new Flexible(
            child: new ListView.builder(
              padding: new EdgeInsets.only(top:10.0,bottom: 10.0),
              reverse : true,
              itemBuilder: (_,int index) => message_list[index],
              itemCount: message_list.length,
            ),
          ),
          new Divider(color: Colors.orangeAccent,height: 1.0,),
          new Container(
            child: new Container(child:new Row(
              children: <Widget>[
               new  Flexible(
                      child: new TextField(
                    decoration: new InputDecoration(hintText: "Message",),
                    controller: textController,
                    onSubmitted: button_sent,
                  ),
                ),
                new IconButton(
                  icon: new Icon(Icons.send),onPressed:()=> button_sent(textController.text),
                ),
              ],
            ),
            ),
          ),
        ],
      ),
    );
  }
}

