import 'package:flutter/material.dart';
import './main.dart';
import './screens/taskpage2.dart';

Map <String, WidgetBuilder> routes = {
    '/': (context) => TopPage(),
    '/taskpage': (context) => TaskPage(),

};