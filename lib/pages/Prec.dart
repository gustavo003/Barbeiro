import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Prec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Precauções", style: TextStyle(
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
        decoration: BoxDecoration(
          color: Colors.white70,

        ),
        margin: EdgeInsets.only(left: 20, right: 20, top:30, bottom: 5),
        padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
        child: ListView(
          children: <Widget>[
            Center(
              child: Text("Como se prevenir", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),),
            ),
            SizedBox(height: 20),
            Text("Aqui teremos o conteúdo da tela de Precauções"),
          ],
        ),
      ),
    );



  }



}
