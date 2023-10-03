import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:snapchat_clone/Widgets/appbar_widget.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snapchat_clone/Widgets/map_widget.dart';

class Map_Screen extends StatefulWidget {
  @override
  State<Map_Screen> createState() => _Map_ScreenState();
}

class _Map_ScreenState extends State<Map_Screen> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex =
      CameraPosition(target: LatLng(11.576029, 104.845914), zoom: 15.4746);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: getMapWidget(),
      body: getBody(),
      // Column(
      //   children: [

      //Expanded(child: getMapWidget()),
      //   ],
      // ),
    );
  }

  Widget getBody() {
    return GoogleMap(
      mapType: MapType.normal,
      myLocationButtonEnabled: false,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }

  Widget getMapWidget() {
    return mapwidet(); // Include your mapwidet here
  }
}
