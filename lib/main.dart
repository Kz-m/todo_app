import 'package:flutter/material.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget { // This widget is the root of this application.
  TodoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: TopPage(),
    );
  }
}

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);
  @override
  _TopPageState createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> { //private State class that goes with _TopPageState
  bool value1 = false;
    onChange (bool value)=> setState((){
    value1 = value;
  });
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      backgroundColor: value1? Colors.black12 : Colors.grey[50],
      appBar: AppBar(
        // Here we take the value from the TopPage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle:false,
        backgroundColor: value1? Colors.grey : Colors.grey[900],
        ), //AppBar
      body: 
      Column(
        children:[
          SwitchListTile(
            value: value1,
            onChanged: onChange,
            secondary: Icon(value1? Icons.wb_sunny_sharp : Icons.circle,color: value1? Colors.white: Colors.black,),
            //title: Text(
              //'Dark Mode',style: TextStyle(color: value1 ? Colors.white :Colors.black),), //SwitchListTitle
            ), //Text
            Text('test', style: TextStyle(color: value1? Colors.white: Colors.black),)
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be horizontal)
        ],
      ) //column
    ); //scafford
  }
}
