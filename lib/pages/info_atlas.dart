import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {

  var barbeiro;
  Info({this.barbeiro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text(barbeiro["latim"], style: TextStyle(
          fontStyle: FontStyle.italic
        ),),
        backgroundColor: Color.fromRGBO(110, 95, 12, 1),

      ),
      body: Body(barbeiro) ,
    );
  }




  Body(barbeiro){
    return Container(
      margin: EdgeInsets.only(left:25, right: 25, top: 15, bottom:15),

      child: ListView(
        children: <Widget>[
          Center(
            child: Image.asset(barbeiro["nome"], width: 250, height: 250,),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),

            width: double.infinity,
            height: 130,
            padding: EdgeInsets.only(left:20, top:20, right: 10),
            decoration: BoxDecoration(
                color: Color.fromRGBO(224,224,224, 1),

                borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

Text(barbeiro["latim"], style: TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  fontStyle: FontStyle.italic
),),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
Column(
  children: <Widget>[
      Text("TAMANHO(mm)", style: TextStyle(
        color: Color.fromRGBO(177,177,177, 1),
        fontWeight: FontWeight.bold
      ),),
      SizedBox(height: 10,),
      Text(barbeiro["Tamanho"])

  ],
),

                  ],
                ),

              ],
            ),
          ),
          SizedBox(height: 15),
          Text("Descrição", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color.fromRGBO(177,177,177, 1),

          ),),
          Container(
              margin: EdgeInsets.only(top:10),
              child: Text(barbeiro['Diagnose'])),
          Container(
            margin: EdgeInsets.only(top:15),

            child: Text("Habitat", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromRGBO(177,177,177, 1),

            ),),
          ),
          Container(
              margin: EdgeInsets.only(top:15, bottom:20),
              child: Text(barbeiro['Habitat'])),
    barbeiro['Regiao']=="null"?Container():
          Container(
            margin: EdgeInsets.only(top:15),

            child: Text("Região endêmica", style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromRGBO(177,177,177, 1),

            ),),
          ),
          barbeiro['Regiao']=="null"?Container():

          Container(
              margin: EdgeInsets.only(top:15, bottom:20),
              child: Text(barbeiro['Regiao']))

        ],
      ),
    );
  }

}

class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 15.0,
      width: 15.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}



