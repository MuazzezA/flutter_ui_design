import 'package:flutter/material.dart';

GestureDetector defaultButton(
    {required buttonText, required Function() onClick}) {
  return GestureDetector(
    onTap: onClick,
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.black),
      height: 50,
      width: 200,
      child: Center(
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}
