import 'package:flutter/material.dart';
import 'package:noticias/page/detalle.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 0.0;
  int edad = 0;
  double estatura = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
        backgroundColor: Color.fromARGB(226, 22, 19, 38),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                color: Color.fromARGB(226, 22, 19, 38),
                child: Row(
                  children: [
                    ///Hombre
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.man,
                              size: 100,
                            ),
                            Text("Hombre")
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(223, 33, 28, 58),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                    //Mujer
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.woman,
                              size: 100,
                            ),
                            Text("Mujer")
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(223, 33, 28, 58),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                  ],
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                color: Color.fromARGB(226, 22, 19, 38),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Estatura"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${estatura.toInt()}",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Text("cm")
                          ],
                        ),
                        Slider(
                          value: estatura,
                          max: 300,
                          min: 0,
                          onChanged: (double value) {
                            setState(() {
                              estatura = value;
                            });
                          },
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(223, 33, 28, 58),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                color: Color.fromARGB(226, 22, 19, 38),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Peso"),
                              Text(
                                "${peso}",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      iconSize: 50,
                                      onPressed: () {
                                        setState(() {
                                          peso--;
                                        });
                                      },
                                      icon:
                                          Icon(Icons.remove_circle, size: 50)),
                                  IconButton(
                                      iconSize: 50,
                                      onPressed: () {
                                        setState(() {
                                          peso++;
                                        });
                                      },
                                      icon: Icon(Icons.add_circle, size: 50)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(223, 33, 28, 58),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Edad"),
                              Text(
                                "${edad}",
                                style: TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      iconSize: 50,
                                      onPressed: () {
                                        setState(() {
                                          edad--;
                                        });
                                      },
                                      icon: Icon(Icons.remove_circle)),
                                  IconButton(
                                      iconSize: 50,
                                      onPressed: () {
                                        setState(() {
                                          edad++;
                                        });
                                      },
                                      icon: Icon(Icons.add_circle)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(223, 33, 28, 58),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    )),
                  ],
                ),
              )),
          Expanded(
              flex: 2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetallePage(),
                      ));
                },
                child: Container(
                  color: Color.fromARGB(255, 240, 46, 98),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Calcular",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ]),
                ),
              ))
        ],
      ),
    );
  }
}
