import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import './pages/LaunchPage.dart';
import './Pages/CameraPage.dart';
import 'package:camera/camera.dart';

//run app with the landing page
Future<Null> main() async {
  cameras = await availableCameras();
  runApp(new MaterialApp(home: new launchPage()));
}







