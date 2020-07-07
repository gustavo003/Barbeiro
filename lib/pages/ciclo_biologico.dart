import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class Ciclo_biologico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Ciclo biológico"),
        backgroundColor: Color.fromRGBO(110, 95, 12, 1),

      ),
      body: Body(),
    );

  }

  Body(){
    return Container(
      padding: EdgeInsets.only(left:20, right: 20, top: 35, bottom: 35),
      margin: EdgeInsets.only(left:15, right: 15, top:25, bottom: 60),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(204,198,146,1)

      ),
      child: ListView(
        children: <Widget>[
          Container(
            height: 100,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(157,84,65,1),

              ),
              child: Center(
                child: Text("Ciclo Biológico", style: TextStyle(
                  color:Colors.white,
fontWeight:FontWeight.bold,
                  fontSize: 20
                ),),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 278,
             child: PhotoView(
                imageProvider: AssetImage("images/ciclo.jpeg"),
              )
          ),
      Container(
        height: 60,
        margin: EdgeInsets.only(top:30),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(157,84,65,1),

          ),
          child: Center(
            child: Text("+ Informações", style: TextStyle(
                color:Colors.white,
                fontWeight:FontWeight.bold,
                fontSize: 20
            ),),
          ),
        ),
      ),
        ],
      ),
    );

  }

}
