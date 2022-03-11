import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto parcial 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
            toolbarHeight: 100.0,
            backgroundColor: Colors.white,
            elevation: 1.0,
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://mitsoftware.com/wp-content/uploads/2020/12/flutter-1.jpg',
                          width: 100,
                        ),
                      ),
                    ),
                    const Text(
                      "Parcial 1",
                      style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Arial',
                          color: Colors.grey),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "ISSC",
                      style: TextStyle(
                          fontSize: 15.0,
                          fontFamily: 'Arial',
                          color: Colors.grey),
                    )
                  ],
                ),
              ],
            )),
        body: Column(
          children: [
            Container(
              height: 280,
              child: ListView(
                children: [
                  Row(
                    children: [seccion1(), seccion1()],
                  ),
                  Row(
                    children: [seccion1(), seccion1()],
                  ),
                  Row(
                    children: [seccion1(), seccion1()],
                  ),
                  Row(
                    children: [seccion1(), seccion1()],
                  ),
                  Row(
                    children: [seccion1(), seccion1()],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Container(
              height: 130,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Row(
                      children: [
                        card1(),
                        card1(),
                        card1(),
                        card1(),
                        card1(),
                        card1(),
                        card1(),
                        card1(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget seccion1() {
  return Container(
      child: Padding(
    padding: const EdgeInsets.all(35.0),
    child: Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://mitsoftware.com/wp-content/uploads/2020/12/flutter-1.jpg',
                width: 100,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Texto",
              style: TextStyle(
                  fontSize: 25.0, fontFamily: 'Arial', color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Texto pequeño",
              style: TextStyle(
                  fontSize: 15.0, fontFamily: 'Arial', color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          children: const [
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    ),
  ));
}

Widget card1() {
  return Card(
    color: Colors.amber,
    child: Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                'https://mitsoftware.com/wp-content/uploads/2020/12/flutter-1.jpg',
                width: 100,
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Texto Línea 1",
                      style: TextStyle(
                          fontSize: 10.0,
                          fontFamily: 'Arial',
                          color: Colors.purple),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Texto Línea 2",
                      style: TextStyle(
                          fontSize: 10.0,
                          fontFamily: 'Arial',
                          color: Colors.purple),
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text("Botón"))
                ],
              )
            ],
          ),
        ],
      ),
    ),
  );
}
