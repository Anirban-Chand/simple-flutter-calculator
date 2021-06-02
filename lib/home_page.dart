import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  double n1 = 0, n2 = 0, res = 0;
  int exp = 1;

  final TextEditingController t1 = TextEditingController(text: "0");
  final TextEditingController t2 = TextEditingController(text: "0");

  void add() {
    setState(() {
      n1 = double.parse(t1.text);
      n2 = double.parse(t2.text);
      res = n1 + n2;
    });
  }

  void sub() {
    setState(() {
      n1 = double.parse(t1.text);
      n2 = double.parse(t2.text);
      res = n1 - n2;
    });
  }

  void mul() {
    setState(() {
      n1 = double.parse(t1.text);
      n2 = double.parse(t2.text);
      res = n1 * n2;
    });
  }

  void div() {
    setState(() {
      n1 = double.parse(t1.text);
      n2 = double.parse(t2.text);
      res = n1 / n2;
    });
  }

  void square(){
    setState(() {
      n1 = double.parse(t1.text);
      n2=0;
      res = n1*n1;
    });
  }

  void cube(){
    setState(() {
      n1 = double.parse(t1.text);
      n2=0;
      res = n1*n1*n1;
    });
  }

  void powN(){
    setState(() {
      n1 = double.parse(t1.text);
      n2 = double.parse(t2.text);
      res = pow(n1,n2) as double;
    });
  }

  void sqroot(){
    setState(() {
      n1 = double.parse(t1.text);
      n2 = 0.0;
      res = sqrt(n1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "$res",
                style: TextStyle(
                    color: Colors.grey[850],
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "e.g - 10"),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "e.g - 20"),
                controller: t2,
              ),
              Padding(padding: const EdgeInsets.only(top: 20.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(onPressed: add, child: Text("+"), style: ElevatedButton.styleFrom(primary: Colors.indigoAccent[400], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),),),),
                  Padding(padding: const EdgeInsets.only(right: 5.0)),
                  ElevatedButton(onPressed: sub, child: Text("-"), style: ElevatedButton.styleFrom(primary: Colors.indigoAccent[400], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),),),),
                  Padding(padding: const EdgeInsets.only(right: 5.0)),
                  ElevatedButton(onPressed: mul, child: Text("*"), style: ElevatedButton.styleFrom(primary: Colors.indigoAccent[400], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),),),),
                  Padding(padding: const EdgeInsets.only(right: 5.0)),
                  ElevatedButton(onPressed: div, child: Text("/"), style: ElevatedButton.styleFrom(primary: Colors.indigoAccent[400], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),),),),
                ],
              ),
              Padding(padding: const EdgeInsets.only(bottom: 15.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(onPressed: square, child: Text("x^2"), style: ElevatedButton.styleFrom(primary: Colors.indigoAccent[400], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),),),),
                  Padding(padding: const EdgeInsets.only(right: 5.0)),
                  ElevatedButton(onPressed: cube, child: Text("x^3"), style: ElevatedButton.styleFrom(primary: Colors.indigoAccent[400], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),),),),
                  Padding(padding: const EdgeInsets.only(right: 5.0)),
                  ElevatedButton(onPressed: powN, child: Text("x^n"), style: ElevatedButton.styleFrom(primary: Colors.indigoAccent[400], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),),),),
                  Padding(padding: const EdgeInsets.only(right: 5.0)),
                  ElevatedButton(onPressed: sqroot, child: Text("√x"), style: ElevatedButton.styleFrom(primary: Colors.indigoAccent[400], shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0),),),),
                ],
              )
            ],
          )),
    );
  }
}
