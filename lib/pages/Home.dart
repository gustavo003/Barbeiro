
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   index=0;
   children = [
     Mapa(),
  Dicas(),
     Detalhes()
   ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: index,
        onTap: (x){
          setState(() {
            index = x;
          });
        },
        items:[

          BottomNavigationBarItem(

            icon: new Icon(Icons.location_on, color: Colors.yellow),
            title: new Text('Home', style: TextStyle(
              color: Colors.yellow
            ),),

          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.info, color: Colors.yellow),
            title: new Text('Dicas', style: TextStyle(
              color: Colors.yellow
            ),),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.description, color: Colors.yellow,),
            title: new Text('Detalhes', style: TextStyle(
              color: Colors.yellow
            ),),
          ),
        ]
      ),
      body: children[index]
    );
  }
}

class Mapa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
      ),
      body: Container(
        child: Center(
          child: Text("Aqui ficará o mapa!"),
        ),
        color: Colors.white10,
      ),

    );
  }
}

