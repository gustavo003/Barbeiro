import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Epidemologia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text("Ciclo biológico"),
        backgroundColor: Colors.red,

      ),
      body: Body(),
    );

  }

  Body(){
    return Container(
      margin: EdgeInsets.only(left:15, right:15, top:50, bottom:20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow,
            ),
            height: 80,
            child: Center(
              child: Text("Epidemologia", style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold
              ),),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top:40, left:20, right:20),
            child: Text(
                "Aqui teremos o conteúdo referente a epidemologia"
            ),
          )

        ],
      ),
    );

  }

}
