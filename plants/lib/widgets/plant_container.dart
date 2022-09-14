import 'package:flutter/material.dart';

Container plantContainer({required String imagePath, required Map info}) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Color(0xffEFEAD8)),
    child: Row(
      children: [
        Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              info['name'] + "\n",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(info['desc'])
          ]),
        ),
        SizedBox(
          height: 200,
          width: 150,
          child: Image(image: AssetImage(imagePath)),
        ),
      ],
    ),
  );
}
