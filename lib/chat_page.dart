import 'package:flutter/material.dart';
import 'chat_body.dart';
class ChatApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat app",
      home: new ChatHome(),
    );
  }
}

class ChatHome extends StatelessWidget {
  //final GlobalKey<ScaffoldState> _scaffoldstate1 =
    //  new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
       appBar: new AppBar(
        backgroundColor: Colors.blue[600],
        title: new Row(
          children: <Widget>[
            new Icon(Icons.cake),
            new Padding(padding: const EdgeInsets.only(left: 20.0),),
            new Text("Flutter Chat"),
          ],  
        ),


        // actions: <Widget>[
        //   new IconButton(
        //     icon: Icon(Icons.search),onPressed: (){
        //       final snackBar = new SnackBar(duration: const Duration(minutes: 5),
        //       backgroundColor: Colors.blue[400],
        //         content: new TextField(decoration: new InputDecoration(hintText: "Search"),
        //         ),
        //         action: SnackBarAction(label: 'Go',textColor: Colors.white,
        //         onPressed: () => {_scaffoldstate1.currentState.removeCurrentSnackBar(), },
        //         ),
        //         );
        //       _scaffoldstate1.currentState.showSnackBar(snackBar);
        //     },
        //     ),
        // ],
      ),
      body: new ChatBody(),
    );
  }
}
