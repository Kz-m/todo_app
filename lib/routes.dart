import 'package:flutter/material.dart';
import './main.dart';
import './pages/taskpage.dart';

Map <String, WidgetBuilder> routes = {
    '/': (context) => TopPage(),
    '/taskpage': (context) => TaskPage(),
};