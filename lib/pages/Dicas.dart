import 'package:flutter/material.dart';

class Dicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text("Informações", style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),),
          centerTitle: true,
        ),
        body: Body()
    )
    ;
  }



  Body(){

      return Container(

        decoration: BoxDecoration(
         color: Colors.white70
,
        ),
        child: Center(

          child: Column(
            children: <Widget>[

              Stack(
                children: <Widget>[
                   Container(
        margin: EdgeInsets.only(top:100, left: 10, right: 10),

decoration: BoxDecoration(
  gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [Colors.white, Colors.white]
  ),

  borderRadius: BorderRadius.circular(40),
  border: Border.all(color: Colors.grey[800])

),

                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Elemento('images/pedrinho.jpg', "Precauções", x:1),
                              Elemento('images/pedrinho.jpg', "Primeiros \nsocorros", x:1),
                            ],
                          ),  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Elemento('images/pedrinho.jpg', "Emergência"),
                              Elemento('images/pedrinho.jpg', "Sintomas"),
                            ],

                          ),
                        ],
                      )
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(

                          decoration: BoxDecoration(

                              color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                          ),
                          margin: EdgeInsets.only(top:82),
                          child: Text('Dicas', style: TextStyle(fontSize: 25

                              ,fontWeight: FontWeight.bold
                          ),)),
                    ],
                  ),

                ],
              ),

            ],
          ),
        ),
      );

  }


  Componente(icone, texto){
   return Container(
      width: 150,
     color: Colors.yellow[300],

     height:120,
      margin: EdgeInsets.only(left:5, right: 5, top:20, bottom: 15),
      padding: EdgeInsets.all(15),

     child: Column(
       crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
            height: 200,
            child:

        Image.asset('images/pedrinho.jpg', width: 200, height: 200,)),
        SizedBox(
          height: 12,
        ),
        Text(texto, style: TextStyle(
          fontSize: 13
        ),)
      ],
     ),
    );
  }

  Elemento(imagem, String cont, {x}){

      return Container(

        margin: EdgeInsets.only(left:10, right:10, top:x==null?0:35, bottom: x==null?25:10)
        ,
        padding: EdgeInsets.only(top:19),
        height: 180,

        width: 170,
        decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
            color: Colors.yellow[300],
            border: Border.all(color: Colors.white)
        ),

        child: Column(
          children: <Widget>[
          Container(
            width: 100,
            height: 100,
        decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imagem)
              )
            ),
          ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(cont, style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),),
            )
          ],
        ),
      );

  }


}


class CenterHorizontal extends StatelessWidget {

  CenterHorizontal(this.child);
  final Widget child;

  @override
  Widget build(BuildContext context) =>
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [child]);
}


