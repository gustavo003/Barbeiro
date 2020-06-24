import 'package:barbeiro/pages/info_atlas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atlas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mini-Atlas"),

      ),
      body: Body(context),

    );
  }


  Body(context){
    return Container(
      color: Colors.brown,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.only(left:12,right:12, top: 40),

        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 60,
              width: double.infinity,
              child: Center(

                  child: Text("Mini-Atlas do barbeiro", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)),
            ),



Container(
  color: Colors.grey,
  child: Column(
    children: <Widget>[
      Especie('images/alberprosenia_malheroi.jpeg', "Alberprosenia malheroi", 'images/belminus_laportei.jpg', "Belminus laportei", (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info()));
      }),
      Especie('images/cavernicola_lenti.jpg', "Cavernicola lenti", "images/cavernicola_pilosa.jpg", "Cavernicola pilosa", (){}),
      Especie('images/eratyrus_mucronatus.jpg', "Eratyrus mucronatus", "images/cavernicola_pilosa.jpg", "Cavernicola pilosa", (){})

    ],
  ),
)


        ],
    ),
      ));


  }

  Especie(image, text, image2, text2, func){
    return
          GestureDetector(
            onTap: func,
            child: Container(
              padding: EdgeInsets.only(top:15, bottom:25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,

                      ),
                      height: 180,
                      margin: EdgeInsets.only(left: 20, right: 10),
padding: EdgeInsets.only(top:10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                         Image.asset(image, width: 100, height: 100,),

                          Center(
                              child: Container(
                                  padding: EdgeInsets.only(left:28, top:10),
                                  child: Text(text, style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.red
                                  ),)))
                        ],
                      )
                    ),
                  ),
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,

                        ),
                        height: 180,
                        margin: EdgeInsets.only(left: 10, right: 20),
                        padding: EdgeInsets.only(top:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(image2, width: 100, height: 100,),

                            Center(
                                child: Container(
                                    padding: EdgeInsets.only(left:18, top:10),
                                    child: Text(text2, style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      color: Colors.red),)))
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ),
          );



  }


}
