import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações"),
      ),
      body: Body(),
    );
  }

  Body(){
    return Container(
      color: Colors.brown,
      child: Container(
        margin: EdgeInsets.all(30),
  decoration: BoxDecoration(

      borderRadius: BorderRadius.circular(20),
      color: Colors.white
  ),
        child: Container(
          color: Colors.yellow,
          height: 200,
        ),

      ),
    );
  }

}
