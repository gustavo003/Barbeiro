import 'package:barbeiro/pages/Quest_barb.dart';
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
      color: Colors.white,
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
                    color: Color.fromRGBO(170, 160, 111, 1)
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage('images/pedrinho.jpg')
                            )
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(bottom:20),
                        child: Text("Questionário dos sintomas", style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white
                        ),),
                      )
                    ],
                  )
                ),
              ),
            ),


            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>QuestBarb()));

              },
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                    color: Color.fromRGBO(170, 160, 111, 1)

                ),
               child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fitHeight,
                                  image: AssetImage('images/pedrinho.jpg')
                              )
                          ),
                        ),                        Container(
                          padding: EdgeInsets.only(bottom:20, left: 20, right: 20),
                          child: Text("Questionário de identificação do barbeiro", style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            color: Colors.white
                          ),),
                        )
                      ],
                    )
                ),
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


