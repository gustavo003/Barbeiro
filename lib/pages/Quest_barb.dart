
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestBarb extends StatefulWidget {
  @override
  _QuestBarbState createState() => _QuestBarbState();
}

class _QuestBarbState extends State<QuestBarb> {
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
        title: Text("Questionário do barbeiro"),
        backgroundColor: Colors.red,
      ),
      body: Body(),
    );

  }

  Body(){
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.only(bottom:40),
        color: Colors.white,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20),

                color: Colors.yellow,
                child: Text("Marque as característica do inseto para analisar a probabilidade dele ser um barbeiro", style:
                TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17
                ),),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Text("*OBS: A análise a seguir não tem como ser 100% correta, "
                      "e de todo modo, é melhor contactar o laboratório para uma confirmação",style: TextStyle(
                      fontWeight: FontWeight.bold
                  ))),
              SizedBox(
                height: 15,
              ),
              checkbox("É marrom", value1, (value){
                setState(() {
                  value1 = value;
                });
              }),

              checkbox("Mais coisas aqui", value2,(value){
                setState(() {
                  value2 = value;
                });
              }),
              checkbox("Etc", value3,(value){
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
          newValue ? valor++: valor--;

        });
        print("Valor: $valor");
      },

      controlAffinity: ListTileControlAffinity.leading,
    );

  }

}