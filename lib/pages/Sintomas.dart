import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sintomas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sintomas", style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold
        ),),
        backgroundColor: Colors.yellow,
      ),
      body: Body(),
    );


  }


  Body(){
    return Container(
      color: Colors.grey[400],
      child: Container(
        color: Colors.white70,
        margin: EdgeInsets.only(left: 20, right: 20, top:30, bottom: 5),
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: ListView(
          children: <Widget>[
            Center(
              child: Text("Sintomas", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
            ),
            SizedBox(height: 20),
            Text("Um ano faz agora que os primeiros jacintos me destes, chamavam-me a menina dos jacintos"),
            SizedBox(height: 20),
            Image.asset("images/pedrinho.jpg", width: 300, height: 300,),
            SizedBox(height: 20),
            Text("Poi s'ascose nel foco che gli affina"),
            SizedBox(height: 20),
            Image.asset("images/pato.jpg", width: 300, height: 300,),

          ],
        ),
      ),
    );



  }



}
