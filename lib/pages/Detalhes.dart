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
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(left:10, right: 10, top:20, bottom: 5),
        padding: EdgeInsets.only(top:80),
        
        color: Colors.white,
        child: ListView(
          children: <Widget>[

            Column(
              children: <Widget>[
                SizedBox(height: 30,),
                Row(
                  children: <Widget>[
                    Elemento("images/barbeiross.jpeg", "Mini-atlas", (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>

                            Atlas()));
                    }),
                    Elemento("images/pedrinho.jpg", "Ciclo biológico da doença de Chagas", (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>

                          Ciclo_biologico()));

                    }),


                  ],
                ),
               Center(
                 child:  Elemento("images/pedrinho.jpg", "Epidemiologia", (){
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

          margin: EdgeInsets.only(left:5, right:5, top:x==null?0:25, bottom: x==null?15:10)
          ,
          padding: EdgeInsets.only(top:15),
          height: 180,

          width: 180,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(170, 160, 111, 1)

          ),

          child: Column(
            children: <Widget>[
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: AssetImage(imagem)
                    )
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left:10, right: 10),
                child: Center(
                  child: Text(cont, style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),),
                ),
              )
            ],
          ),
        ),
      );


    }


}


