import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatefulWidget {
  GoogleMapDemo({Key? key}) : super(key: key);

  @override
  State<GoogleMapDemo> createState() => _GoogleMapDemoState();
}

class _GoogleMapDemoState extends State<GoogleMapDemo> {
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
      child: Stack(children: [
        GoogleMap(
          initialCameraPosition: _kGooglePlex,
        ),
        Positioned(
          left: 20.0,
          top: 20.0,
          child: Container(
            width: 50.0,
            height: 50.0,
            child: ElevatedButton(
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0.0),
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255, 236, 235, 235),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "<",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 238, 121, 108),
                  ),
                )),
          ),
        )
      ]),
    )));
  }
}
