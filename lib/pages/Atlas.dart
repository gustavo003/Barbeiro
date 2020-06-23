import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atlas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mini-Atlas"),

      ),
      body: Body(),

    );
  }


  Body(){
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.only(left:12,right:12, top: 40),

        child: Column(
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 60,
              width: double.infinity,
              child: Center(child: Text("Mini-Atlas", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)),
            ),
        Expanded(


child:Container(
  color: Colors.grey,
  child: Column(
    children: <Widget>[
      Especie()
    ],
  ),
)
        ),

        ],
    ),
      ));


  }

  Especie(){
    return
          Container(
            padding: EdgeInsets.only(top:35),
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
                       Image.asset('images/alberprosenia_malheroi.jpeg', width: 100, height: 100,),

                        Center(
                            child: Container(
                                padding: EdgeInsets.only(left:28, top:10),
                                child: Text("Alberprosenia malheroi", style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic
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
                  margin: EdgeInsets.only(left: 10, right: 20),

                  height: 180,
                  child: Text("Texto 2"),
                )
                )
              ],
            ),
          );



  }


}
