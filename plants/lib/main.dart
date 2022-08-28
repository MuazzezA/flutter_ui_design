import 'package:flutter/material.dart';
import 'package:plants/routes.dart';
import 'package:plants/theme/default_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plants',
      theme: defaultTheme(),
      routes: routes,
      initialRoute: "/",
    );
  }
}
