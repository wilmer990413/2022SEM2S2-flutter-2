import 'package:flutter/material.dart';

class DetallePage extends StatelessWidget {
  double imc = 0.0;
  Color color = Colors.transparent;
  String estado = "";
  String mensaje = "";
  DetallePage(
      {super.key,
      required this.imc,
      required this.color,
      required this.mensaje,
      required this.estado});

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
              child: Container(
                  color: Color.fromARGB(226, 22, 19, 38),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        Text("Resultado",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ))),
          Expanded(
              flex: 5,
              child: Container(
                color: Color.fromARGB(226, 22, 19, 38),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(223, 33, 28, 58),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              estado,
                              style: TextStyle(
                                  fontSize: 30,
                                  color: color,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "$imc",
                              style: const TextStyle(
                                  fontSize: 80, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                        Expanded(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              mensaje,
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.justify,
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
