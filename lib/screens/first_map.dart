// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
//
// class FirstMap extends StatefulWidget {
//   const FirstMap({Key? key}) : super(key: key);
//   static String routeName = '/map';
//
//   @override
//   _FirstMapState createState() => _FirstMapState();
// }
//
// class _FirstMapState extends State<FirstMap> {
//   late GoogleMapController mapController;
//
//   final LatLng _center = const LatLng(45.521563, -122.677433);
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Maps Sample App'),
//           backgroundColor: Colors.green[700],
//         ),
//         body: GoogleMap(
//           onMapCreated: _onMapCreated,
//           initialCameraPosition: CameraPosition(
//             target: _center,
//             zoom: 11.0,
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../sql_helper.dart';
import './db.dart';

class FirstMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  final LatLng _center = const LatLng(49.844215588915965, 24.026154577577756);

  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final data = await SQLHelper.getItems();
    setState(() {
      print(data);
      data.forEach((place) {
        final marker = Marker(
          markerId: MarkerId(place['id'].toString()),
          position: LatLng(double.parse(place['latitude']), double.parse(place['longitude'])),
          infoWindow: InfoWindow(
            title: place['title'],
            snippet: place['description'],
          ),
        );
        _markers[place['title']] = marker;
      });
      _controller.complete(controller);
    },);

    }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Map'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          markers: _markers.values.toSet(),
        ),
    // floatingActionButton: FloatingActionButton.extended(
    //       onPressed: _goToTheLake,
    //       label: Text('To the lake!'),
    //       icon: Icon(Icons.directions_boat),
    //     ),
      ),
    );
  }
  // Future<void> _goToTheLake() async {
  //   final GoogleMapController controller = await _controller.future;
  //   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  // }
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
