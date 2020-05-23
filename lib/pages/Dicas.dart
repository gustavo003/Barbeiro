import 'package:flutter/material.dart';

class Dicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: Body()
    )
    ;
  }



  Body(){

      return Container(

        decoration: BoxDecoration(
         color: Colors.grey[200]
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


  borderRadius: BorderRadius.circular(40),

),

                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Elemento('images/pato.jpg', "Precauções", x:1),
                              Elemento('images/cachorro.jpg', "Primeiros \nsocorros", x:1),
                            ],
                          ),  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Elemento('images/gaivota.jpg', "Emergência"),
                              Elemento('images/gato.jpg', "Sintomas"),
                            ],

                          ),
                        ],
                      )
                    ),


                      Container(


                          margin: EdgeInsets.only(top:92, right: 5, left: 5),
                          padding: EdgeInsets.only(left:40, right: 5),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.info, color: Colors.black),
SizedBox(
  width: 7,
),
                              Text('Dicas', style: TextStyle(fontSize: 22,
                                  color: Colors.black

                                  ,fontWeight: FontWeight.bold
                              ),),
                            ],
                          )),



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

        margin: EdgeInsets.only(left:5, right:5, top:x==null?0:35, bottom: x==null?25:10)
        ,
        padding: EdgeInsets.only(top:15),
        height: 180,

        width: 170,
        decoration: BoxDecoration(
borderRadius: BorderRadius.circular(20),
            color: Color.fromARGB(100, 0, 60, 30),

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
                color: Colors.white,
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


