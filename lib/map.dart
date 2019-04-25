import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//import 'dart:async';

class MapPage extends StatefulWidget{
  @override
  State<MapPage> createState() => MapPageState ();
}

class MapPageState extends State<MapPage>{
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  GoogleMapController mapController;
  void _onMapCreated(GoogleMapController controller){
    mapController = controller;
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        key: _scaffoldKey,
        drawer: new Container(
          width: 250.0,
          color: Colors.orangeAccent,
          child: new ListView(
            children: <Widget>[
              new Container(
                child: new DrawerHeader(
//                    child: new CircleAvatar(
//                      maxRadius: 10.0,
//                      backgroundColor: Colors.orangeAccent,
//                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text('Hello User!',
                              style: new TextStyle(
                                  fontSize: 16.0,
                                  color: const Color(0xFFFFAB40),
//                                fontWeight: FontWeight.bold,
                                  fontFamily: "Roboto"
                              ),
                            ),
                          ),
//                          new Text(
//                            "Hello User!",
//                            style: new TextStyle(
//                                fontSize: 16.0,
//                                color: const Color(0xFFFFAB40),
////                                fontWeight: FontWeight.bold,
//                                fontFamily: "Roboto"
//                            ),
//                            textAlign: TextAlign.left,
//                          ),
                          Center(
                            child: new Container(
                              width: 70.0,
                              height: 70.0,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: ExactAssetImage('assets/default_profile.jpg'),
                                ),
                              ),
                            ),
                          ),
                          FlatButton(
                            child: Align(
                              alignment: Alignment.center,
                              child: Text("View Profile",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                            onPressed: (){
                              Navigator.pushNamed(context, '/user_info_alt');
                            },
                          ),
                        ],
                      ),
                ),
                color: Colors.white,
                

//                new Text('Hello!',
//                  style: new TextStyle(
//                    fontSize: 16.0,
//                    color: const Color(0xFFFFAB40),
//                    fontWeight: FontWeight.bold,
//                    fontFamily: "Roboto"
//                  ),
//                ),
//                decoration: new BoxDecoration(
//                  color: Colors.white,
//                ),
              ),
              Container(
                // This align moves the children to the bottom
                  child: Align(
                      alignment: FractionalOffset.center,
                      child: Container(
                          child: Column(
                            children: <Widget>[
                              //Divider(),
                              ListTile(
                                  leading: Container(
                                    child: FlatButton(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Scheduled Activity",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      onPressed: (){
//                                        todo
                                      },
                                    ),
                                  )
//                                  Icon(Icons.settings),
//                                  title: Text('Settings')),
                              ),
                              ListTile(
                                  leading: Container(
                                    child: FlatButton(
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("Log Out",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      onPressed: (){
                                        Navigator.of(context).pushNamed('/Prelogin');
                                      },
                                    ),
                                  )
//                                  Icon(Icons.settings),
//                                  title: Text('Settings')),
                              ),
                            ],
                          )
                      )
                  )
              )
            ],
          ),
        ),

//        floatingActionButton: new Builder(builder: (context) {
//          return new FloatingActionButton(
//            backgroundColor: Colors.transparent,
//            onPressed: () {
//              Scaffold.of(context).openDrawer();
//            },
//            child: new Icon(Icons.menu),
//            foregroundColor: Colors.orangeAccent,
//          );
//        }),

        body: Stack(
          children: <Widget>[
          GoogleMap(
            myLocationEnabled: true,
            mapType: MapType.normal,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
                bearing: 90.0,
                target: LatLng(40.007565, -105.267298),
                tilt: 20, //talk to group and adjust
                zoom: 15.5
            ),
            markers: {
              _pin,
            },
          ),

//          SizedBox(height: 30.0,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                tooltip: 'Menu',
                color: Colors.orangeAccent,
                  iconSize: 32.00,
                  icon: Icon(
                    Icons.menu
                  ),
                onPressed: () => _scaffoldKey.currentState.openDrawer(),
              ),
            ),
          ),
//          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Align(
              alignment: Alignment.topCenter,
              child: ButtonTheme(
                minWidth: 8.00,
                height: 35.00,
                child: RaisedButton(
                  child: const Text('Choose/Create an Activity'),
                  textColor: Colors.white,
                  color: Colors.orangeAccent,
                  elevation: 4.0, //shadow of button
                  splashColor: Color(0xFF424242),
                  onPressed: (){
                    Navigator.of(context).pushNamed('/event_create');
                  }
                ),
              ),
            ),
          )
//            _zoomin(),
//            _zoomout(),
//            _buildContainer(),
            ],
          ),
        ),

      );
  }
//  Widget _buildContainer(){
//    return Align(
//      alignment: Alignment.bottomLeft,
//      child: Container(
//        margin: EdgeInsets.symmetric(vertical: 20.0,),
//        height: 150.0,
//        child: ListView(
//          scrollDirection: Axis.horizontal,
//          children: <Widget>[
//            SizedBox(width: 10.0,),
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: _boxes("Live Event!"),
//            )
//          ],
//  }

//        ),
//      ),
//    );
//  Widget _boxes(double lat, double long){
//    return GestureDetector(
//      onTap: (){
//        _gotoLocation(lat, long);
//      },
//    );
//  }
//  Future<void> _gotoLocation(double lat, double long)async{
//    final GoogleMapController controller = await mapController.future;
//    controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition()))

  //}
  Marker _pin = Marker(
    markerId: MarkerId('_pin1'),
    position: LatLng(40.006949, -105.262697),
    //onTap ,

    //TODO: Replace the latitude and longtitude to the actual one for each created event
//    icon: BitmapDescriptor.defaultMarkerWithHue(
//      BitmapDescriptor.hueViolet,
//
//    )
  );
}
