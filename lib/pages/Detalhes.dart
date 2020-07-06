import 'package:barbeiro/pages/Atlas.dart';
import 'package:barbeiro/pages/ciclo_biologico.dart';
import 'package:barbeiro/pages/epidemologia.dart';
import 'package:flutter/material.dart';

class Detalhes extends StatelessWidget {
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
      child: Container(
        margin: EdgeInsets.only(left:10, right: 10, top:20, bottom: 5),
        padding: EdgeInsets.only(top:80),
        
        color: Colors.brown,
        child: ListView(
          children: <Widget>[

            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Elemento("images/barbeiross.jpeg", "Mini-atlas do barbeiro", (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>

                            Atlas()));
                    }),
                    Elemento("images/pedrinho.jpg", "Ciclo biológico da doença de chagas", (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>

                          Ciclo_biologico()));

                    }),


                  ],
                ),
               Center(
                 child:  Elemento("images/pedrinho.jpg", "Epidemologia", (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>

                       Epidemologia()));

                 }),
               )
              ],
            )



          ],
        ),
      ),
    );
  }


  Elemento(imagem, String cont, func, {x}){

    return GestureDetector(
onTap: func,
          child: Container(
            height: 180,
width: 180,
margin: EdgeInsets.only(left: 10, right:0, bottom: 15),

          
              decoration: BoxDecoration(
                  color: Colors.white,

                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.red, width: 4)
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Container(

                      child: Image.asset(imagem, width: 100, height: 100,)),
                  SizedBox(height: 10),
                  Container(
                      padding: EdgeInsets.only(left:18, right: 5),
                      child: Text(cont, style: TextStyle(
                        fontWeight: FontWeight.bold,

                      ),))
                ],
              ),

          ),
    );

  }


}


