import 'package:charts/pages/pie_charts.dart';
import 'package:charts/pages/splash_page.dart';
import 'package:flutter/material.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
//Inicia o app
  runApp(app());
}

class app extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Charts',
      home: SplashPage(),
    );
  }
}

