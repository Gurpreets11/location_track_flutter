import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapLocation extends StatefulWidget {
  //const MapLocation({super.key, required this.lat, required this.lng})  ;

  const MapLocation({Key? key, required this.lat, required this.lng}) : super(key: key);
  final double lat;
  final double lng;

  @override
  MapLocationState createState() => MapLocationState();//lat, lng
}

class MapLocationState extends State<MapLocation> {
  Completer<GoogleMapController> _controller = Completer();

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Maps Sample App ${widget.lat}'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: LatLng(widget.lat, widget.lng),
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
