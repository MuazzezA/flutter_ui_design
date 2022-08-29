import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 30))
          ..repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: const [
            Icon(Icons.person),
          ],
          leading: const Icon(Icons.format_list_bulleted),
        ),
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) => ListView(
              shrinkWrap: false,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background (2).jpg'),
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topLeft),
                  ),
                ),
                Stack(
                  children: [
                    Align(
                      alignment: const Alignment(0, -0.6),
                      child: Container(
                        height: 30,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Colors.black,
                        ),
                      ),
                    ),
                    // SizedBox(
                    //   height: 120,
                    //   child: RotationTransition(
                    //     turns: Tween(begin: 0.0, end: 1.0).animate(controller),
                    //     child: const Image(
                    //         image: AssetImage("assets/daisy_yellow.png")),
                    //   ),
                    // ),
                    // Align(
                    //   alignment: Alignment.topRight,
                    //   child: SizedBox(
                    //     height: 120,
                    //     child: RotationTransition(
                    //       turns:
                    //           Tween(begin: 0.0, end: 1.0).animate(controller),
                    //       child: const Image(
                    //           image: AssetImage("assets/daisy_blue.png")),
                    //     ),
                    //   ),
                    // ),
                    const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Plants World",
                        style: TextStyle(
                            color: Color.fromARGB(255, 10, 72, 12),
                            fontWeight: FontWeight.w200,
                            fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
