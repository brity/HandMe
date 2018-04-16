import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:hand_me/main.dart';


class CameraPage extends StatefulWidget {

  @override
  CameraPageState createState() => new CameraPageState();
}

class CameraPageState extends State<CameraPage> {
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
        aspectRatio: controller.value.aspectRatio,
        child: new CameraPreview(controller));
  }
}