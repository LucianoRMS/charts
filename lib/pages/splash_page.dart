import 'dart:async';
import 'package:flutter/material.dart';
import 'pie_charts.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement didChangeBuildContext
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PieCharts()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned(
            child: Align(
                alignment: Alignment.center,
                child:Text(
                  'EXAMPLE OF GRAPHICS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      //fontFamily: 'Aleo',
                      fontStyle: FontStyle.normal,
                      fontSize: 15.0,
                      color: Colors.indigo),
                ),
                // Container(
                //   width: 300,
                //   height: 300,
                //   child: Image.asset("img/logo.png"),
                // )
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(left: 25.0, right: 25.0, bottom: 30.0),
                child: Text(
                  '© 2022 - Example of Graphics',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      //fontFamily: 'Aleo',
                      fontStyle: FontStyle.normal,
                      fontSize: 15.0,
                      color: Colors.black26),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
