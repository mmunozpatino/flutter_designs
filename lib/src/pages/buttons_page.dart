import 'package:flutter/material.dart';

class ButtonsPage extends StatelessWidget {
  const ButtonsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles()
              ],
            )
          )
        ],
      ),
    ));
  }

  Widget _backgroundApp() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final pinkBox = Transform.rotate(
        angle: 45,
        child: Container(
          height: 360.0,
          width: 360.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80.0),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(236, 98, 188, 1.0),
                  Color.fromRGBO(241, 142, 172, 0.8)
                ]
                )
              ),
        ));

    return Stack(
      children: <Widget>[
        gradient, 
        Positioned(
          top: -100.0,
          left: -50.0,
          child: pinkBox
        )
      ],
    );
  }

  Widget _titles() {
    return SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Clasifed transaction", style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold ),),
            SizedBox(height: 10.0),
            Text("Clasifed this transaction into a particular category", style: TextStyle( color: Colors.white, fontSize: 18.0),),
          ],
        ),
      ),
    );
  }
}
