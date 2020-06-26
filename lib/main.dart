import 'package:desings/src/pages/basic_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'basic',
      routes: {
        'basic': (BuildContext context) => BasicPage()
      },
    );
  }
}