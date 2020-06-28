
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      backgroundColor: Colors.brown,
      appBar: AppBar(
        title: Text("Questionário dos sintomas"),
        backgroundColor: Colors.red,
      ),
      body: Body(),
    );

  }

  Body(){
    return Container(
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
              height: 20,
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
                      title: Text("Há ${(valor*16.6).round()}% de chance de você ter a doença"),
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
    );

  }


  checkbox(text, values, func){
    return  CheckboxListTile(

      title:Text(text,style: TextStyle(
          color: Colors.red,
        fontWeight: FontWeight.bold
      ),),
      value: values,
      activeColor: Colors.blue,
      onChanged:(bool newValue){
        func(newValue);
setState(() {
newValue?valor+=1:valor-=1;

});
print("Valor: $valor");
      },

      controlAffinity: ListTileControlAffinity.leading,
    );

  }

}
