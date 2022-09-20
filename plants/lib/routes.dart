import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/profile.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (context) => const WelcomeScreen(),
  "/home": (context) => const HomeScreen(),
  "/profile": (context) => const ProfileScreen(),
};
