
import 'package:barbeiro/pages/Formulario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Dicas.dart';
import 'Detalhes.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int index;

   List<Widget> children;
List <String> titles;
  @override
  void initState() {


    // TODO: implement initState
    super.initState();
   index=0;
   children = [
     Mapa(),
  Dicas(),
     Detalhes(),
     Formulario(),
   ];
   titles = [
     "Mapa",
     "Informações",
     "Detalhes",
     "Formulario"
   ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
backgroundColor: Colors.black,
        currentIndex: index,
        onTap: (x){
          setState(() {
            index = x;
          });
        },
        items:[

          BottomNavigationBarItem(
            icon: new Icon(Icons.location_on, color: Colors.white),
            title: new Text('Home', style: TextStyle(
            fontWeight: FontWeight.bold,
                color: Colors.white
            ),),

          ),
          BottomNavigationBarItem(



            icon: new Icon(Icons.info, color: Colors.white),
            title: new Text('Dicas', style: TextStyle(
              color: Colors.white
                  ,fontWeight: FontWeight.bold
            ),),
          ),

          BottomNavigationBarItem(


            icon: new Icon(Icons.filter_vintage, color: Colors.white,),
            title: new Text('Detalhes', style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),

          BottomNavigationBarItem(
            icon: new Icon(Icons.description, color: Colors.white,),
            title: new Text('Formulário', style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),


        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text(titles[index], style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
        ),),

      ),
drawer: Drawer(

),
      body: children[index]
        ,

    );
  }
}

class Mapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        child: Center(
          child: Text("Aqui ficará o mapa!"),
        ),
        color: Colors.white10,
      ),

    );
  }
}

