import 'package:flutter/material.dart';
//import './routes.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false, //Delete appBar backPage sign "<"
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _textArea(),
              _buttonArea()
            ],
          ),
        ),
      ),
    );
  }
  Widget _textArea(){
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
              maxLines: 10,
              decoration: InputDecoration(
              hintText: 'Put something',
              border: InputBorder.none,
              ),
              style: TextStyle( 
                //background: 
                fontSize: 26.0,
                color: Color(0xFFC51162),
              ),
            ),
          )
        ]
      ),
    );
  }
  Widget _buttonArea(){ //Resolve: over the screen, button for buttom.right
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Align( //because of "child" as follows
            child: ElevatedButton(
              child: Text('Done'),
              onPressed: (){
                Navigator.pop(context);
              }
            ),
          ),
        ]
      ),
    );
  }
}