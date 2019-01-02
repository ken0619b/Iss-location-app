import 'package:flutter/material.dart';
import '../services/iss_service.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class IssLocation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new IssLocationState();
  }
}

class IssLocationState extends State<IssLocation> {

  var issLocation = {
    'longitude' : '45.521563',
    'latitude' : '-122.677433'
  };

  LatLng getNewIssLocation(String _longitude, String _latitude){
    debugPrint("Camera has set to : ${issLocation['longitude']}, ${issLocation['latitude']}");
    return new LatLng(double.parse(_longitude), double.parse(_latitude));
  }

  GoogleMapController mapController;

  void _onMapCreated(GoogleMapController controller) {
    setState(() {
      mapController = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter-gRPC-test"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GoogleMap(
                onMapCreated: _onMapCreated,
                options: GoogleMapOptions(
                  cameraPosition: CameraPosition(
                    target: LatLng(double.parse(issLocation['longitude']), double.parse(issLocation['latitude'])),
                    zoom: 10.0,
                  ),
                ),
              ),
            ),
            // title
            new Center(
              child: new Text("${issLocation['longitude']}, ${issLocation['latitude']}",
                style: new TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w200,
                    fontSize: 29.9
                ),
              ),
            ),
            new Center(
              child: new FlatButton(
                  onPressed: getLocation,
                  child: new Text("Get the location of ISS", style: new TextStyle(
                    color: Colors.black,
                  ))),
            ),
            new Center(
              child: new FlatButton(
                  onPressed: mapController == null ? null : () {
                    mapController.animateCamera(CameraUpdate.newCameraPosition(
                      CameraPosition(
                        target:  getNewIssLocation(issLocation['longitude'], issLocation['latitude']),
                        tilt: 45.0,
                        zoom: 2.0,
                      ),
                    ));
                  },
                  child: new Text("Set Camera Position", style: new TextStyle(color: Colors.black,
                  ))),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getLocation() async {
    var locationResponse = await IssService.getLocation();
    setState(() {
      issLocation['longitude'] = locationResponse.longitude;
      issLocation['latitude'] = locationResponse.latitude;
      debugPrint("${issLocation['longitude']}, ${issLocation['latitude']}");
    });
  }
}