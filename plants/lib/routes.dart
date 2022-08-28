import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plants/screens/home_screen.dart';
import 'package:plants/screens/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (context) => const WelcomeScreen(),
  "/home": (context) => const HomeScreen(),
};
