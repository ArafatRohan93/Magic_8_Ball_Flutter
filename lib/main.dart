import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.fingerprint),
          centerTitle: true ,
          backgroundColor: Colors.indigo.shade900,
          title: Text('Ask Anything'),
        ),
        body: AnsPage(),
      ),
    ),
  );
}

class AnsPage extends StatefulWidget {
  @override
  _AnsPageState createState() => _AnsPageState();
}

class _AnsPageState extends State<AnsPage> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo.shade600,
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('images/ball$ballNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
