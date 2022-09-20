import 'package:flutter/material.dart';
import 'package:plants/widgets/plant_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Map _plantsInfo = {
      'name': 'Plant Name',
      'desc': 'Desc: Lorem Ipsum es un texto de marcador de posición comúnmente utilizado en las industrias gráficas ' +
          'gráficas y editoriales para previsualizar diseños y maquetas visuales.',
    };

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/profile");
                },
                icon: Icon(Icons.person)),
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
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: const Center(
                    child: Text(
                      "Plants" " - " "World",
                      style: TextStyle(
                          color: Color(0xffCFD2CF),
                          fontWeight: FontWeight.w200,
                          fontSize: 25),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: plantContainer(
                      imagePath: "assets/plants (9).png", info: _plantsInfo),
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: plantContainer(
                      imagePath: "assets/plants (7).png", info: _plantsInfo),
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: plantContainer(
                      imagePath: "assets/plants (1).png", info: _plantsInfo),
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: plantContainer(
                      imagePath: "assets/plants (4).png", info: _plantsInfo),
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: plantContainer(
                      imagePath: "assets/plants (8).png", info: _plantsInfo),
                ),
                GestureDetector(
                  onTap: (() {}),
                  child: plantContainer(
                      imagePath: "assets/plants (3).png", info: _plantsInfo),
                ),
              ],
            ),
          ),
        ));
  }
}
