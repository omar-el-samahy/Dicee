import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      title: 'Dicee',
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
              ),
              'Dicee'),
          backgroundColor: Colors.black,
        ),
        body: const SafeArea(
          child: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ldn = 1;
  int rdn = 2;
  void rand() {
    setState(
      () {
        ldn = Random().nextInt(6) + 1;
        rdn = Random().nextInt(6) + 1;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                rand();
              },
              child: Image.asset('images/dice$ldn.png'),
            ),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  rand();
                },
                child: Image.asset('images/dice$rdn.png')),
          ),
        ],
      ),
    );
  }
}
