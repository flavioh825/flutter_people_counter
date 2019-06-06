import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String information = "Está vazio.";

  void _changeLotation(int count) {
    if(_people >= 0 && _people <= 10) { 
      setState(() {
        if((_people + count) < 0) {
          _people = 0;
        } else if ((_people + count) > 10) {
          _people = _people;
        } else {
          _people += count;
        }
      });
    }
    changeInformation();
  }

  void changeInformation() {
    if (_people < 1) {
      setState(() {
        information = "Está vazio.";
      });
    } else if (_people > 0 && _people < 10) {
      setState(() {
        information = "Resta: ${10 - _people}/10.";
      });
    } else {
      setState(() {
        information = "Lotado!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Image.asset(
            "images/restaurant.jpg",
            fit: BoxFit.cover,
            height: 1000.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Container(
                    color: Colors.black38,
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Pessoas:$_people",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FlatButton(
                                child: Text("+1",
                                    style: TextStyle(
                                        fontSize: 40.0, color: Colors.white)),
                                onPressed: () {
                                  _changeLotation(1);
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FlatButton(
                                child: Text("-1",
                                    style: TextStyle(
                                        fontSize: 40.0, color: Colors.white)),
                                onPressed: () {
                                  _changeLotation(-1);
                                },
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text(information,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 30.0)),
                            )
                          ],
                        )
                      ],
                    )),
              ),
            ],
          )
        ],
      );
  }
}