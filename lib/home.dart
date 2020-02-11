import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, res = 0;
  final TextEditingController text1 = new TextEditingController(text: '0');
  final TextEditingController text2 = new TextEditingController(text: '0');

  void Add() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      res = num1 + num2;
    });
  }

  void Sub() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      res = num1 - num2;
    });
  }

  void Mul() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      res = num1 * num2;
    });
  }

  void Div() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);
      res = num1 ~/ num2;
    });
  }

  void Clear() {
    setState(() {
      text1.text = '0';
      text2.text = '0';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text('Calculator'),
        centerTitle: true,
      ),
      body: Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  'Output: $res',
                  style: new TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  controller: text1,
                  decoration: new InputDecoration(
                    hintText: 'Enter first number',
                  ),
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  controller: text2,
                  decoration: new InputDecoration(
                    hintText: 'Enter secand number',
                  ),
                ),
                new Padding(padding: const EdgeInsets.only(top: 20.0)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new MaterialButton(
                        child: new Text('+'),
                        textColor: Colors.white,
                        color: Colors.amber,
                        onPressed: Add),
                    new MaterialButton(
                        child: new Text('-'),
                        textColor: Colors.white,
                        color: Colors.amber,
                        onPressed: Sub),
                  ],
                ),
                new Padding(padding: const EdgeInsets.only(top: 10.0)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new MaterialButton(
                        child: new Text('*'),
                        textColor: Colors.white,
                        color: Colors.amber,
                        onPressed: Mul),
                    new MaterialButton(
                        child: new Text('/'),
                        textColor: Colors.white,
                        color: Colors.amber,
                        onPressed: Div),
                  ],
                ),
                new Padding(padding: const EdgeInsets.only(top: 10.0)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new MaterialButton(
                        child: new Text('clear'),
                        textColor: Colors.white,
                        color: Colors.amberAccent,
                        onPressed: Clear),
                  ],
                ),
              ])),
    );
  }
}
