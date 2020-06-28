import 'package:barbeiro/pages/Quest_sintomas.dart';
import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(


      body:Body(context)
    )
    ;
  }


  Body(context){
    return Container(
      color: Colors.brown,
      width: double.infinity,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestSintomas()));

              },
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Image.asset("images/pedrinho.jpg", width: 120, height: 120,),
                      Container(
                        padding: EdgeInsets.only(bottom:20),
                        child: Text("Questionário dos sintomas", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.red
                        ),),
                      )
                    ],
                  )
                ),
              ),
            ),
            Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,

              ),
             child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Image.asset("images/pedrinho.jpg", width: 120, height: 120,),
                      Container(
                        padding: EdgeInsets.only(bottom:20, left: 20, right: 20),
                        child: Text("Questionário de identificação do barbeiro", style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          color: Colors.red
                        ),),
                      )
                    ],
                  )
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}


