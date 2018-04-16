import 'dart:async';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  cameras = await availableCameras();
  runApp(new MaterialApp(home: new launchPage()));
}

class launchPage extends StatelessWidget{
  //landing page for HandMe (will contain a logo and dismiss on tap)
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.orange,
      child: new InkWell(

        //onLongPress: ,    //To be implemented : special CaiDan

        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new CameraApp())),

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("HandMe",
                style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w800))

          ],
        ),
      ),
    );
  }
}


//the camera app view

class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => new _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = new CameraController(cameras[1], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.initialized) {
      return new Container();
    }
    return new AspectRatio(
        aspectRatio:
        //controller.value.aspectRatio,
        1.0,
        child: new CameraPreview(controller));
  }
}