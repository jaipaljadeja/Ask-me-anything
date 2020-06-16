import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.yellow[500],
        body: AskApp(),
      ),
    ),
  );
}

class AskApp extends StatefulWidget {
  @override
  _AskAppState createState() => _AskAppState();
}

class _AskAppState extends State<AskApp> {
  int opNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text(
                        'Ask Me\nAnything',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.blue[700],
                          fontSize: 55,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  child: SafeArea(
                    child: Text(
                      '?',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.blue[700],
                        fontSize: 140,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Text(
                'Example:\nShould i watch Netflix today?',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: Colors.blue[700],
                  fontSize: 20,
                  letterSpacing: 5,
                  height: 1.4,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    opNumber = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset(
                  'images/OP$opNumber.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
