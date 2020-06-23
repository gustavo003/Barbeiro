import 'package:barbeiro/pages/Atlas.dart';
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
      color: Colors.grey[300],
      child: Container(
        margin: EdgeInsets.only(left:10, right: 10, top:20, bottom: 5),
        padding: EdgeInsets.only(top:80),
        
        color: Colors.blue[100],
        child: ListView(
          children: <Widget>[

            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Elemento("images/tseliot1.jpg", "Mini-atlas do barbeiro", (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>

                            Atlas()));
                    }),
                    Elemento("images/tseliot1.jpg", "Ciclo biológico da doença de chagas", (){}),


                  ],
                ),
               Center(
                 child:  Elemento("images/tseliot1.jpg", "Epidemologia", (){}),
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
margin: EdgeInsets.only(left: 10, right:0, bottom: 10),

          
              decoration: BoxDecoration(
                  color: Colors.white,

                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.blue)
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Image.asset(imagem, width: 100, height: 100,),
                  SizedBox(height: 20),
                  Container(
                      padding: EdgeInsets.only(left:10, right: 5),
                      child: Text(cont))
                ],
              ),

          ),
    );

  }


}


