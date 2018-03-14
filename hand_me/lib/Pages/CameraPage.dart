import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget{

  @override
  State createState() => new CameraPageState();

}

class CameraPageState extends State<CameraPage> {

  @override
  Widget build(BuildContext context){
//    return new Stack(
//      children: <Widget>[
//        new Column(
//          children: <Widget>[
//            new Material(
//              color: Colors.red,
//            )
//          ],
//        )
//      ],
//    );

    return new Material(
      color: Colors.red,
    );
  }
}