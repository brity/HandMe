import 'package:flutter/material.dart';


class launchPage extends StatelessWidget{
  //landing page for HandMe (will contain a logo and dismiss on tap)
  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.orange,
      child: new InkWell(

        //onLongPress: ,    //To be implemented : special CaiDan

        onTap: () => print("User tapped launch screen."),

        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("HandMe",
                style: new TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w900))

          ],
        ),
      ),
    );
  }
}