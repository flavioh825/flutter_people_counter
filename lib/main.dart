import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Stack(
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
                              child: Text("Pessoas: 0",
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
                                onPressed: () {},
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10.0),
                              child: FlatButton(
                                child: Text("-1",
                                    style: TextStyle(
                                        fontSize: 40.0, color: Colors.white)),
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("Pode Entrar!",
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
      )));
}
