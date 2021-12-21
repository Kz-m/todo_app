/*import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
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
            children: <Widget>[
              _titleArea(),
              _textArea(),
              _buttonArea()
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
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
          child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            //_addButton() //TODO: buttonの記述わけるか? check some Git-code
              AnimatedButton : animatedButton(
                required Widget child,
                animationDuration: const Duration(milliseconds: 1000),
                initialText: "Ive Done",
                finalText: "Add",
                iconData: Icons.check,
                iconSize: 32.0,
                buttonStyle: ButtonStyle(
                  //primaryColor: Colors.blue.shade600,
                  //secondaryColor: Colors.white,
                  elevation: 20.0,
                  initialTextStyle: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                  ),
                  finalTextStyle: TextStyle(
                    fontSize: 24.0,
                    color: Colors.pink.shade600,
                  ),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
*/