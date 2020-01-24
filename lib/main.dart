import 'package:first_hybrid/chat_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   String _name,_pswd;
    TextEditingController _nameController = new TextEditingController();
    TextEditingController _pswdController = new TextEditingController(); 
  final GlobalKey<ScaffoldState> _scaffoldstate =
      new GlobalKey<ScaffoldState>();


  Future navigateToSubpage(BuildContext context) async{
    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatApp()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldstate,


      appBar: new AppBar(
        backgroundColor: Colors.blue[600],
        title: new Row(
          children: <Widget>[
            new Icon(Icons.cake),
            new Padding(padding: const EdgeInsets.only(left: 20.0),),
            new Text("Flutter Chat"),
          ],  
        ),


        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search),onPressed: (){
              final snackBar = new SnackBar(duration: const Duration(minutes: 5),
              backgroundColor: Colors.blue[400],
                content: new TextField(decoration: new InputDecoration(hintText: "Search"),
                ),
                action: SnackBarAction(label: 'Go',textColor: Colors.white,
                onPressed: () => {_scaffoldstate.currentState.removeCurrentSnackBar(), },
                ),
                );
              _scaffoldstate.currentState.showSnackBar(snackBar);
            },
            ),
        ],
      ),



      body: new Stack(
        fit: StackFit.expand,
      children: <Widget> [
        new Image(image: new AssetImage("images/birds1.jpg"),fit: BoxFit.cover,
        color: Colors.blue[200],colorBlendMode: BlendMode.darken,),
        new Container(
       // color: Colors.blue[200],
        child: new Theme(
          data: new ThemeData(brightness: Brightness.dark,
          inputDecorationTheme: new InputDecorationTheme(
            labelStyle: new TextStyle(color: Colors.tealAccent,fontSize: 20.0),
            ),
            ),
            
          child:new Form(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextFormField(
                decoration: new InputDecoration(labelText: "NAME",),
                keyboardType: TextInputType.text,
                controller: _nameController,
              ),
              new TextFormField(
                decoration: new InputDecoration(labelText: "PASSWORD",),
                keyboardType: TextInputType.text,
                controller: _pswdController,
                obscureText: true,
              ),
              new Padding(padding: const EdgeInsets.only(top: 40.0),),
              new MaterialButton(child: new Text("Enter...",style: new TextStyle(fontSize: 20.0),),
              color: Colors.deepOrange,splashColor: Colors.red,
              padding: const EdgeInsets.only(left: 30.0,right:20.0),
              onPressed: (){
                _name = _nameController.text;_pswd = _pswdController.text;
                if(_name.compareTo("singh") == 0 && _pswd.compareTo("singh") == 0){
                    navigateToSubpage(context);        
                }
              },),
            ],
          ),
        ),),
      ),]
      ),  

    );
  }
}
