
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/border_radius.dart';
class QuestSintomas extends StatefulWidget {
  @override
  _QuestSintomasState createState() => _QuestSintomasState();
}

class _QuestSintomasState extends State<QuestSintomas> {
  bool value1;
  bool value2;
  bool value3;
  bool value4;
  bool value5;
  bool value6;
int valor;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value1 = false;
    value2 = false;
    value3 = false;
    value4 = false;
    value5 = false;
    value6 = false;
    valor=0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Questionário dos sintomas"),
        backgroundColor: Color.fromRGBO(110, 95, 12, 1),
      ),
      body: Body(),
    );

  }

  Body(){
    return Container(
      child: ListView(

        children: <Widget>[

          Container(

            margin: EdgeInsets.only(left:5, right: 5, top:4, bottom: 10),
            padding: EdgeInsets.only(left:47, right:45, top:25, bottom:19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            color: Color.fromRGBO(114,115,117, 1)
          ),
          child: Text(
            "  Este questionário não tem valor\ndiagnóstico. Caso apresente esses\nsintomas vá à unidade de Saúde mais\n                         próxima."
                ,style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
          ),
          ),


          Container(
        margin: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(103,53,2, 1),

                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                    decoration: BoxDecoration(
                        color:Color.fromRGBO  (178,152,127,1),

                        borderRadius: BorderRadius.circular(4)
                    )
,child: Center(
  child:   Text("Marque seus sintomas",style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),),
),
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.only(left:20, right: 20, bottom: 20, top: 10)
                      ),
                      SizedBox(height: 20,),


                      checkbox("Febre prolongada", value1, (value){
                        setState(() {
                          value1 = value;
                          value==true?valor++:valor--;

                        });
                      return null;
                      }

                      ),
                      SizedBox(height: 20,),

                      checkbox("Dor de cabeça", value2,(value){
                        setState(() {
                          value2 = value;
                          value==true?valor++:valor--;

                        });
                        return null;

                      }),
                      SizedBox(height: 20,),

                      checkbox("Fraqueza intensa", value3,(value){
                        setState(() {
                          value3 = value;
                          value==true?valor++:valor--;

                        });
                        return null;

                      }),
                      SizedBox(height: 20,),

                      checkbox("Inchaço do rosto e pernas", value4,(value){
                        setState(() {
                          value4 = value;
                          value==true?valor++:valor--;

                        });
                        return null;

                      }),
                      SizedBox(height: 20,),

                      checkbox("Problemas cardíacos, como\ninsuficiência cardíaca", value5,
                              (value){
                            setState(() {
                              value5 = value;
                              value==true?valor++:valor--;
                            });
                            return null;

                              }),
                      SizedBox(height: 20,),

                      checkbox("Problemas digestivos, como\nmegacolon e megaesôfago.", value6,
                              (value){
                            setState(() {
                              value6 = value;
                              value==true?valor++:valor--;
                              print(valor);

                            });
                            return null;

                              }),
                      SizedBox(
                        height: 50,
                      ),

                    ]
    ),

             ),
          Container(
            width: 200,
            height: 70,
            margin: EdgeInsets.only(left:60, right: 60, top:6)
,            decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(30)
            ),

            child: RaisedButton(
              color: Colors.blue,

              onPressed: (){

                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text("Há ${(valor*(100/6)).round()}% de chance de você ter a doença"),
                    content: Text("Procure o hospital mais próximo se achar necessário"),
                    actions: <Widget>[
                      FlatButton(
                        child: Text("Ok"),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                });

              },

              child: Text("Analisar", style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),),

            ),
          )
,
SizedBox(height: 30,)
    ]
          )
        ,
      );
    

  }

  /*
   SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(bottom:20),
        margin: EdgeInsets.all(20),
        color: Colors.white,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),

                color: Colors.yellow,
                child: Text("Marque os sintomas que você possui para analisar se pode ter ou não a doença de Chagas", style:
                  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                  ),),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text("*OBS: A análise a seguir não substitui um exame clínico e serve apenas como orientação, "
                      "para mais informações, procure o hospital mais próximo.", style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),)),
             checkbox("Febre prolongada", value1, (value){
               setState(() {
                 value1 = value;
               });
             }),
              checkbox("Dor de cabeça", value2,(value){
                setState(() {
                  value2 = value;
                });
              }),
              checkbox("Fraqueza intensa", value3,(value){
                setState(() {
                  value3 = value;
                });
              }),
              checkbox("Inchaço do rosto e pernas", value4,(value){
                setState(() {
                  value4 = value;
                });
              }),
              checkbox("Problemas cardíacos, como insuficiência cardíaca", value5,
                      (value){
                    setState(() {
                      value5 = value;
                    });
                  }),
              checkbox("Problemas digestivos, como megacolon e megaesôfago.", value6,
                      (value){
                    setState(() {
                      value6 = value;
                    });
                  }),
              SizedBox(
                height: 50,
              ),

              Container(
                width: 200,
                height: 70,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(20)
                ),

                child: RaisedButton(
                  color: Colors.blue,

                  onPressed: (){

                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Há ${(valor*(100/6)).round()}% de chance de você ter a doença"),
content: Text("Procure o hospital mais próximo se achar necessário"),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Ok"),
                            onPressed: (){
                                Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    });

                  },

                  child: Text("Analisar", style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  ),),

                ),
              )
            ],
          ),
        ),
      ),
    );
   */


  checkbox(text, values, func){
    return  Row(
      children: <Widget>[

        Container(
          margin: EdgeInsets.only(left:20, right: 20),
          decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.white,
                  width: 4
              ),
          ),
          width: 35,
          height: 35,
    child: Transform.scale(
    scale:1.8,
  child: Checkbox(

    value: values,
    onChanged: func,
    ),
    )

        ),
        GestureDetector(
          onTap:(){},
          child: Text(text, style: TextStyle(
            color: Colors.white,
            fontSize: 15
          ),),
        )
      ],
    );
  }

}
