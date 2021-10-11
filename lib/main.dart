import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text('Ask Me Anything'),
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Colors.blueAccent,
                  Colors.purple,
                  Colors.blue
                ])),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: const AskmeMain(),
        ),
      ),
    ),
  );
}

class AskmeMain extends StatefulWidget {
  const AskmeMain({Key? key}) : super(key: key);

  @override
  _AskmeMainState createState() => _AskmeMainState();
}

class _AskmeMainState extends State<AskmeMain> {
  var randAsk = 1;
  void changeQues() {
    setState(() {
      randAsk = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextButton(
          onPressed: () {
            changeQues();
          },
          child: Image.asset(
            'img/ball$randAsk.png',
            height: 300,
            width: 300,
          ),
        ),
      ),
    );
  }
}
