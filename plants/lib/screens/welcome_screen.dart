import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Align(
            alignment: const Alignment(0.5, -0.6),
            child: Container(
              height: 350,
              width: 300,
              decoration: const BoxDecoration(
                color: Color(0xff83BD75),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(-0.4, 0),
            child: Container(
              height: 415,
              width: 300,
              decoration: const BoxDecoration(
                color: Color(0xffC3E5AE),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
            ),
          ),
          const Align(
            alignment: Alignment(0, 0.1),
            child: Image(image: AssetImage("assets/plants (5).png")),
          ),
          Align(
            alignment: const Alignment(0.2, -0.62),
            child: Text(
              "Find Your Plant",
              style:
                  GoogleFonts.fleurDeLeah(fontSize: 50.0, color: Colors.black),
            ),
          ),
          Align(
            alignment: const Alignment(0, 0.9),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/");
              },
              child: Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.black),
                height: 50,
                width: 200,
                child: const Center(
                  child: Text(
                    "LET'S GO",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
