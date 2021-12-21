import 'package:flutter/material.dart';
//import 'package:animated_button/animated_button.dart';
//import './routes.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  bool value1 = false;
  onchange (bool value) =>setState((){
    value1 = value;
  });
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: value1? Colors.black12 : Colors.grey[50],
      appBar: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false, //Delete appBar backPage sign "<"
        backgroundColor: value1? Colors.grey : Colors.grey[900],
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, //spaceAround?
            children:<Widget>[
              _titleArea(),
              _textArea(),
              _buttonArea(), //TODO: should i separate method to class?
            ],
          ),
        ),
      ),
    );
  }
  
  Widget _titleArea(){
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
              maxLines: 2,
              decoration: InputDecoration(
              hintText: 'Title',
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

  Widget _textArea(){
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextField(
              maxLines: 6,
              decoration: InputDecoration(
              hintText: 'Input something',
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

  Widget _buttonArea(){
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Align( //because of "child" as follows
            child: ElevatedButton(
              child: Text('Add'),
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