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
  bool hasTenidoTemperatura = false;
  String turno = " ";
  double edad = 18;
  TextEditingController nombreControlador = TextEditingController();
  @override
  Widget build(BuildContext context) => MaterialApp(
          home: Scaffold(
            appBar: AppBar(
            title: Text(" $nombre $hasTenidoTos $hasTenidoTemperatura $turno $edad"),
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

                CheckboxListTile(
                    title: Text("Has tenido tos en el ultimo mes"),
                    value: hasTenidoTos,
                    onChanged: (bool? value){
                      setState(() {
                        hasTenidoTos =  value!;
                      });
                    }
                ),

                SwitchListTile(
                    title: Text("Has tenido temperatura en el ultimo mes"),
                    value: hasTenidoTemperatura,
                    onChanged: (bool? value){
                      setState(() {
                        hasTenidoTemperatura = value!;
                      });
                    }
                ),

                RadioListTile(
                  title: Text("Matutino"),
                    value: "Matutino",
                    groupValue: turno,
                    onChanged: (value){
                      setState(() {
                        turno = value.toString();
                      });
                    },
                ),
                RadioListTile(
                  title: Text("Vespertino"),
                  value: "Vespertino",
                  groupValue: turno,
                  onChanged: (value){
                    setState(() {
                      turno = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Mixto"),
                  value: "Mixto",
                  groupValue: turno,
                  onChanged: (value){
                    setState(() {
                      turno = value.toString();
                    });
                  },
                ),

                Text("Slecciona tu edad"),
                Slider(
                    value: edad,
                    min: 18.0,
                    max: 25.0,
                    divisions: 7,
                    label: edad.toString(),
                    onChanged: (double value){
                      setState(() {
                        edad = value;
                      });
                    },
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
