import 'package:flutter/material.dart';

class brain extends StatefulWidget {
  @override
  _brainState createState() => _brainState();
}

class _brainState extends State<brain> {

  int _moneyCounter = 0;
  void _makeRain(){
    setState(() {
      //set state is called each time ui changes
     _moneyCounter = _moneyCounter +200; 
   
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Text(
            "Rain",
          )),
      body: Container(
          child: Column(
        children: <Widget>[
          Center(
            child: Text(
              "Get Rich!",
              style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
            ),
          ),
          Expanded(
              child: Center(
            child: Text(
              
              "\$$_moneyCounter",//back slash works as a text
              
              style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w800,
                  fontSize: 50.0),
            ),
          )),
          Expanded(
            child: Center(
              child: FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                onPressed: _makeRain,
                child: Text(
                  "Let it Rain",
                  style: TextStyle(fontSize: 29.9, fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
