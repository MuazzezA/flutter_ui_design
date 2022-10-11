import 'package:flutter/material.dart';
import 'package:plants/widgets/default_button.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 30))
          ..repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          Center(
            child: SizedBox(
              height: 120,
              child: RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(_controller),
                child:
                    const Image(image: AssetImage("assets/daisy_yellow.png")),
              ),
            ),
          ),
          const Center(child: Text("Plants World")),
          const SizedBox(
            height: 50,
          ),
          defaultButton(buttonText: "Login", onClick: onClickLoginButton),
          defaultButton(buttonText: "Sign Up", onClick: onClickSignUp),
        ],
      ),
    );
  }

  onClickLoginButton() {
    print("login button");
  }

  onClickSignUp() {
    print("signup button");
  }
}
