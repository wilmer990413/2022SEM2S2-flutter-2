import 'package:flutter/material.dart';
import 'package:noticias/page/detalle.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 50.0;
  int edad = 10;
  double estatura = 50.0;
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
                        decoration: BoxDecoration(
                          color: Color.fromARGB(223, 33, 28, 58),
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                      ),
                    )),
                    //Mujer
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(223, 33, 28, 58),
                          borderRadius: BorderRadius.circular(10),
                        ),
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
                      ),
                    )),
                  ],
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                color: const Color.fromARGB(226, 22, 19, 38),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(223, 33, 28, 58),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Estatura"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${estatura.toInt()}",
                              style: const TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Text("cm")
                          ],
                        ),
                        Slider(
                          value: estatura,
                          max: 250.0,
                          min: 50.0,
                          activeColor: Colors.white,
                          inactiveColor:
                              const Color.fromARGB(145, 255, 255, 255),
                          thumbColor: Color.fromARGB(255, 240, 46, 98),
                          onChanged: (double value) {
                            setState(() {
                              estatura = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Expanded(
              flex: 5,
              child: Container(
                color: const Color.fromARGB(226, 22, 19, 38),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(223, 33, 28, 58),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Peso"),
                              Text(
                                "$peso",
                                style: const TextStyle(
                                    fontSize: 40, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      iconSize: 50,
                                      onPressed: () {
                                        setState(() {
                                          if (peso > 50) {
                                            peso--;
                                          }
                                        });
                                      },
                                      icon: const Icon(Icons.remove_circle,
                                          size: 50)),
                                  IconButton(
                                      iconSize: 50,
                                      onPressed: () {
                                        setState(() {
                                          if (peso < 500) {
                                            peso++;
                                          }
                                        });
                                      },
                                      icon: const Icon(Icons.add_circle,
                                          size: 50)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(223, 33, 28, 58),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Edad"),
                            Text(
                              "$edad",
                              style: const TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    iconSize: 50,
                                    onPressed: () {
                                      setState(() {
                                        if (edad > 10) {
                                          edad--;
                                        }
                                      });
                                    },
                                    icon: const Icon(Icons.remove_circle)),
                                IconButton(
                                    iconSize: 50,
                                    onPressed: () {
                                      setState(() {
                                        if (edad < 120) {
                                          edad++;
                                        }
                                      });
                                    },
                                    icon: const Icon(Icons.add_circle)),
                              ],
                            ),
                          ],
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
                  double imc = peso / (estatura * estatura);
                  String estado = "";
                  String mensaje = "";
                  Color color = Colors.white;
                  if (imc < 18.5) {
                    estado = "Bajo Peso";
                    mensaje = "Tiene un peso coporal bajo.\n¡Ten cuidado!";
                    color = Colors.orangeAccent;
                  } else if (imc >= 18.5 && imc <= 24.9) {
                    estado = "Normal";
                    mensaje = "Tiene un peso coporal normal.\n¡Buen trabajo!";
                    color = Colors.green;
                  } else if (imc >= 25 && imc < 29.9) {
                    estado = "Sobrepeso";
                    mensaje = "Tiene sobrepeso corporal.\n¡Ejercitate un poco!";
                    color = Colors.orange;
                  } else if (imc >= 30 && imc < 34.9) {
                    estado = "Obesidad I";
                    mensaje =
                        "Tiene Obesidad tipo I.\n¡Acude a un especialista!";
                    color = Colors.redAccent;
                  } else if (imc >= 35 && imc < 39.9) {
                    estado = "Obesidad II";
                    mensaje =
                        "Tiene Obesidad tipo II.\n¡Acude a un especialista!";
                    color = Colors.red;
                  } else if (imc >= 40 && imc < 49.9) {
                    estado = "Obesidad III";
                    mensaje =
                        "Tiene Obesidad tipo III.\n¡Acude a un especialista!";
                    color = Color.fromARGB(255, 163, 43, 34);
                  } else if (imc < 50) {
                    estado = "Obesidad IV";
                    mensaje =
                        "Tiene Obesidad tipo IV.\n¡Acude a un especialista!";
                    color = Color.fromARGB(255, 114, 33, 27);
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetallePage(
                            imc: imc,
                            estado: estado,
                            color: color,
                            mensaje: mensaje),
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
