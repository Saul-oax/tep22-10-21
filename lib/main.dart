import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(TEP());

class TEP extends StatefulWidget {
  const TEP({Key? key}) : super(key: key);

  @override
  createState() => Estado();
}

class Estado extends State<TEP> {
  String nombre = " ";
  bool hasTenidoTos = false;
  TextEditingController nombreControlador = TextEditingController();
  @override
  Widget build(BuildContext context) => MaterialApp(
          home: Scaffold(
            appBar: AppBar(
            title: Text(" $nombre $hasTenidoTos"),
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: nombreControlador,
                    maxLength: 15,
                    decoration: InputDecoration(
                      icon: Icon(Icons.people_alt_outlined),
                      labelText: "Escrobe tu nombre",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                    ),
                  ),
                ),

                Text("Has tenido tos en el ultimo mes"),
                Checkbox(
                    value: hasTenidoTos,
                    onChanged: (bool? value){
                      setState(() {
                        hasTenidoTos =  value!;
                      });
                    }
                ),

                ElevatedButton(
                    onPressed: (){
                      setState(() {
                        nombre = nombreControlador.text;

                      });
                    },
                    child: Text("Enviar"),

                )
              ],
        ),
      ));
}
