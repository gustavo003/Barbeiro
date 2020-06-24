import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {

  var barbeiro;
  Info({this.barbeiro});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text("Informações"),
        backgroundColor: Colors.red,
      ),
      body: Body(barbeiro),
    );
  }

  Body(barbeiro){
    print(barbeiro["Diagnose"]);
    return SingleChildScrollView(
      child: Container(
        color: Colors.brown,
        child: Container(
padding: EdgeInsets.only(bottom: 20),
          margin: EdgeInsets.all(30),
  decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),
        color: Colors.white
  ),
child: Column(
  children: <Widget>[
      Container(
        child: Center(
          child: Text(barbeiro["latim"], style: TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),),
        ),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(20),
            color: Colors.yellow
        ),
        height: 60,
      ),
        Image.asset(barbeiro["nome"], width: 250, height: 150,),
       ListTile(
        leading: new MyBullet(),
        title: new Text('Diagnose', style: TextStyle(
          color: Colors.red
        ),),
      ),
      Container(
          padding: EdgeInsets.only(left:20, right: 20),
          child: Text(barbeiro["Diagnose"], style: TextStyle(
            fontSize: 15
          ),))

,
      ListTile(
      leading: new MyBullet(),
      title: new Text('Tamanho(mm)', style: TextStyle(
          color: Colors.red
      )),
      ),
    Container(
        padding: EdgeInsets.only(left:20, right: 20),
        child: Text(barbeiro["Tamanho"], style: TextStyle(
            fontSize: 15
        ),))
,
    ListTile(
        leading: new MyBullet(),
        title: new Text('Habitat', style: TextStyle(
            color: Colors.red
        )),
      ),
    Container(
        padding: EdgeInsets.only(left:20, right: 20),
        child: Text(barbeiro["Habitat"], style: TextStyle(
            fontSize: 15
        ),))
,


  ],
),

        ),
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
