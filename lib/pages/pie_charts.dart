import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class PieCharts extends StatefulWidget {
  final String? token;
  const PieCharts({this.token});

  @override
  _PieChartsState createState() => _PieChartsState();
}

class _PieChartsState extends State<PieCharts> {

  @override
  void initState() {
    super.initState();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    //--- Impede que o usuario coloque em modo paisagem ---
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      //--- Impede que a tela de resize quando o teclado for aberto ---
      resizeToAvoidBottomInset: false,
      //--- Appbar ---
      appBar: AppBar(
          title: Text("Comparativo"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: [
          ]),
      //--- Main Home---
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Stack(
          children: [

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(bottom: 80),
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.only(left: 25, right:25, top: 20, bottom: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                      ),
                      child:Text(
                        "Receita X Despesa do FUNDEB",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 21.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 7,
                            offset: Offset(0, 5),
                          )
                        ],
                        color: Colors.white,
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
//Titulo
                          Container(
                            height: 50,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0)),
                                color: Colors.green),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Limite Constitucional",
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    //fontFamily: 'Aleo',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 19.0,
                                    color: Colors.white),
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(35),
                            child: SfRadialGauge(
                                enableLoadingAnimation: true,
                                animationDuration: 4500,
                                axes: <RadialAxis>[
                                  RadialAxis(
                                      minimum: 0,
                                      maximum: 100,
                                      pointers: <GaugePointer>[
                                        NeedlePointer(
                                          value: 100,
                                          enableAnimation: true,
                                        )
                                      ],
                                      ranges: <GaugeRange>[
                                        GaugeRange(startValue: 0, endValue: 45, color: Colors.lightGreen),
                                        GaugeRange(startValue: 45, endValue: 55, color: Colors.yellow),
                                        GaugeRange(startValue: 55, endValue: 100, color: Colors.red),
                                      ]
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 7,
                            offset: Offset(0, 5),
                          )
                        ],
                        color: Colors.green,
                        border: Border.all(color:Colors.black26),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          //Titulo
                          Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0)),
                                color: Colors.green),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Expanded(
                                  child:  Text(
                                    "Receitas Recebidas do FUNDEB",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        //fontFamily: 'Aleo',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19.0,
                                        color: Colors.white),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Divider(
                            height: 15,
                            color: Colors.transparent,
                          ),

                          Container(
                            margin: EdgeInsets.all(05),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "R\$",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      //fontFamily: 'Aleo',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 19.0,
                                      color: Colors.white),
                                ),

                                Text(
                                  "   678.736.462,01",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      //fontFamily: 'Aleo',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 21.0,
                                      color: Colors.white),
                                ),

                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 140,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            spreadRadius: 0.5,
                            blurRadius: 7,
                            offset: Offset(0, 5),
                          )
                        ],
                        color: Colors.green,
                        border: Border.all(color: Colors.black26),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          //Titulo
                          Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(10.0),
                                    topLeft: Radius.circular(10.0)),
                                color: Colors.green),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [

                                Expanded(
                                  child:  Text(
                                    "Despesas com Profissionais do Magistério",
                                    style: TextStyle(
                                        decoration: TextDecoration.none,
                                        //fontFamily: 'Aleo',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 19.0,
                                        color: Colors.white),
                                  ),
                                ),

                              ],
                            ),
                          ),

                          Divider(
                            height: 15,
                            color: Colors.transparent,
                          ),

                          Container(
                            margin: EdgeInsets.all(05),
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "R\$",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      //fontFamily: 'Aleo',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 19.0,
                                      color: Colors.white),
                                ),

                                Text(
                                  "   678.736.462,01",
                                  style: TextStyle(
                                      decoration: TextDecoration.none,
                                      //fontFamily: 'Aleo',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 21.0,
                                      color: Colors.white),
                                ),

                              ],
                            ),

                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
