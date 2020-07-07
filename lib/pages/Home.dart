
//import 'dart:html';

import 'package:barbeiro/pages/Formulario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './Dicas.dart';
import 'Contato.dart';
import 'Detalhes.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:geolocator/geolocator.dart';

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
     "Questionários"
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
            title: new Text('Mapa', style: TextStyle(
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
            title: new Text('Questionários', style: TextStyle(
                color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          ),


        ],
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(110, 95, 12, 1),
        centerTitle: true,
        title: Text(titles[index], style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold
        ),),

      ),
drawer: Drawer(
child: ListView(
  children: <Widget>[
    UserAccountsDrawerHeader(
      accountName: Text("Olá Gustavo"),
      accountEmail: Text("usuario@gmail.com"),

      currentAccountPicture: CircleAvatar(

      ),

    )
    ,ListTile(
      title: Text("Contato"),
      subtitle: Text("Contactar o laboratório"),
      trailing: Icon(Icons.arrow_forward),
      leading: Icon(Icons.contacts),
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Contato()));
      },
    ),
        ListTile(
        title: Text("Sobre"),
    subtitle: Text("Informações sobre o aplicativo"),
    trailing: Icon(Icons.arrow_forward),
    leading: Icon(Icons.info),
    )
  ],
),
),
      body: children[index]
        ,

    );
  }
}







class Mapa extends StatefulWidget {

  @override
  _MapaState createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  Completer<GoogleMapController> _controller = Completer();

Set<Marker> marcadores = {};
Position position;

String lugar;
CameraPosition camerapos =  CameraPosition(target: LatLng(-23.562436, 24.462436)
    ,
  zoom: 19,);



/*carregar(){

  Set<Marker> marcador = {};

Marker marker = Marker(

  markerId: MarkerId('marcador'),
  position: LatLng(51.512876, -0.088143),
    infoWindow: InfoWindow(
    title: "Stetson"
),
);
  Marker marker2 = Marker(

      markerId: MarkerId('marcadorr'),
      position: LatLng(71.512876, -2.088143)
  );
marcador.add(marker);
marcador.add(marker2);

setState(() {
  marcadores = marcador;
});

}
*/


localizar() async{
 position = await  Geolocator().getCurrentPosition(

      desiredAccuracy: LocationAccuracy.high
  );
 if(mounted) {
   setState(() {
     camerapos =  CameraPosition(
         target: LatLng(position.latitude, position.longitude)
         ,zoom: 16
         ,tilt: 0
     );
   });
   }
recuperaendereco();
movimentar();
}

movimentar() async{

  GoogleMapController googleMapController  = await _controller.future;
  googleMapController.animateCamera(
    CameraUpdate.newCameraPosition(camerapos)

  );


}


adicionarlistener(){
  var geolocator = Geolocator();
var locationOptions = LocationOptions(
accuracy: LocationAccuracy.high,

distanceFilter: 10
);
geolocator.getPositionStream(locationOptions).listen((Position position){
  Marker marker2 = Marker(

      markerId: MarkerId('marcadorr'),
      position: LatLng(position.latitude, position.longitude)
  );

if (mounted) {
  setState(() {
    marcadores.add(marker2);
    camerapos = CameraPosition(
        target: LatLng(position.latitude, position.longitude)
        , zoom: 16
        , tilt: 0
    );
  });

}
    });

}



recuperaendereco() async {
double lat=51.512876 ;
double long = -0.088143;
try{
  lat = position.latitude;
  long = position.longitude;
}catch(e){
  print("Erro " + "$e");
}
if(mounted) {

  List <Placemark> placemark = await Geolocator().placemarkFromCoordinates(
      lat, long);
  print("AAAAAAAAAAA");
  if (placemark != null && placemark.length > 0)
    setState(() {
      lugar = placemark[0].administrativeArea;
    });
}
}



@override
  void initState() {
    // TODO: implement initState
    super.initState();

lugar = "";
localizar();
adicionarlistener();
  }




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

floatingActionButton: FloatingActionButton(

  child: Icon(
    Icons.done
  ),
  onPressed: () async {
GoogleMapController googleMapController= await _controller.future;
googleMapController.animateCamera(CameraUpdate.newCameraPosition(
  CameraPosition(target: LatLng(position.latitude, position.longitude)
  ,zoom: 16
,tilt: 0
  )

));
  },
),
      body: Container(
        
       child: Stack(
         children: <Widget>[

           GoogleMap(
             mapType: MapType.normal,
             initialCameraPosition: camerapos,
             onMapCreated: (controller){
             _controller.complete(controller);

             },
             markers: marcadores
           ),
           Container(
             width: double.infinity,
             color:Colors.yellow,
             height: 60,
             margin: EdgeInsets.symmetric(horizontal: 100),
             child: Center(
               child: Text(
                 '$lugar',

style: TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.bold
),
               ),
             ),
           )
         ],
       ),
      ),

    );
  }
}

