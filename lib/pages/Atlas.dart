import 'package:barbeiro/barbeiros.dart';
import 'package:barbeiro/pages/info_atlas.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Atlas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mini-Atlas"),

      ),
      body: Body(context),

    );
  }


  Body(context){

    var barbeiros = Barbeiros();

    return Container(
      color: Colors.brown,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.only(left:12,right:12, top: 40),

        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.yellow,
              height: 60,
              width: double.infinity,
              child: Center(

                  child: Text("Mini-Atlas do barbeiro", style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),)),
            ),



Container(
  color: Colors.grey,
  child: Column(
    children: <Widget>[
      Especie(barbeiros[0]["nome"], barbeiros[0]["latim"], barbeiros[1]["nome"], barbeiros[1]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[0])));
      },
          (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[1])));

          }
      ),
      Especie(barbeiros[2]["nome"], barbeiros[2]["latim"], barbeiros[3]["nome"], barbeiros[3]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[2])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[3])));

          }),
      Especie(barbeiros[4]["nome"], barbeiros[4]["latim"], barbeiros[5]["nome"], barbeiros[5]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[4])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[5])));

          }),

      Especie(barbeiros[6]["nome"], barbeiros[6]["latim"], barbeiros[7]["nome"], barbeiros[7]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[6])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[7])));

          }),

      Especie(barbeiros[8]["nome"], barbeiros[8]["latim"], barbeiros[9]["nome"], barbeiros[9]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[8])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[9])));

          }),
      Especie(barbeiros[10]["nome"], barbeiros[10]["latim"], barbeiros[11]["nome"], barbeiros[11]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[10])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[11])));

          }),
      Especie(barbeiros[12]["nome"], barbeiros[12]["latim"], barbeiros[13]["nome"], barbeiros[13]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[12])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[13])));

          }),
      Especie(barbeiros[14]["nome"], barbeiros[14]["latim"], barbeiros[15]["nome"], barbeiros[15]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[14])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[15])));

          }),

      Especie(barbeiros[16]["nome"], barbeiros[16]["latim"], barbeiros[17]["nome"], barbeiros[17]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[16])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[17])));

          }),
      Especie(barbeiros[18]["nome"], barbeiros[18]["latim"], barbeiros[19]["nome"], barbeiros[19]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[18])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[19])));

          }),

      Especie(barbeiros[20]["nome"], barbeiros[20]["latim"], barbeiros[21]["nome"], barbeiros[21]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[20])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[21])));

          }),


      Especie(barbeiros[22]["nome"], barbeiros[22]["latim"], barbeiros[23]["nome"], barbeiros[23]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[22])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[23])));

          }),

      Especie(barbeiros[24]["nome"], barbeiros[24]["latim"], barbeiros[25]["nome"], barbeiros[25]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[24])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[25])));

          }),

      Especie(barbeiros[26]["nome"], barbeiros[26]["latim"], barbeiros[27]["nome"], barbeiros[27]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[26])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[27])));

          }),

      Especie(barbeiros[28]["nome"], barbeiros[28]["latim"], barbeiros[29]["nome"], barbeiros[29]["latim"], (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[28])));
      },
              (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Info(barbeiro:barbeiros[29])));

          }),


    ],
  ),
)


        ],
    ),
      ));


  }

  Especie(image, text, image2, text2, func, func2){
    return
        Container(
              padding: EdgeInsets.only(top:15, bottom:25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: func,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,

                        ),
                        height: 180,
                        margin: EdgeInsets.only(left: 20, right: 10),
padding: EdgeInsets.only(top:10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                           Image.asset(image, width: 100, height: 100,),

                            Center(
                                child: Container(
                                    padding: EdgeInsets.only(left:28, top:10),
                                    child: Text(text, style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.italic,
                                      color: Colors.red
                                    ),)))
                          ],
                        )
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: func2,
                      child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,

                          ),
                          height: 180,
                          margin: EdgeInsets.only(left: 10, right: 20),
                          padding: EdgeInsets.only(top:10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Image.asset(image2, width: 100, height: 100,),

                              Center(
                                  child: Container(
                                      padding: EdgeInsets.only(left:18, top:10),
                                      child: Text(text2, style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        color: Colors.red),)))
                            ],
                          )
                      ),
                    ),
                  ),
                ],
              ),
            );




  }


}
