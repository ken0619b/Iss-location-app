import 'package:flutter/material.dart';
import '../services/iss_service.dart';

class IssLocation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new IssLocationState();
  }
}

class IssLocationState extends State<IssLocation> {

  var issLocation = {
    'longitude' : '',
    'latitude' : ''
  };

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Flutter-gRPC-test"),
        backgroundColor: Colors.lightGreen,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
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
            )
          ],
        ),
      ),
    );
  }

  Future<void> getLocation() async {
    var locationResponse = await IssService.getLocation();
    setState(() {
      issLocation['longitude'] = locationResponse.longitude ;
      issLocation['latitude'] = locationResponse.latitude;
      debugPrint("${issLocation['longitude']}, ${issLocation['latitude']}");
    });
  }
}