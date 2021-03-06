
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hotel_service/screens/detail_screen.dart';
import 'package:hotel_service/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>Home(),
        '/detail':(context)=>DetailScreen()
      },
    );
  }
}
