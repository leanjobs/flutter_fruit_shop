import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_uh_pm/pages/DetailFruit.dart';
import 'package:flutter_uh_pm/pages/HomePage.dart';
import 'package:flutter_uh_pm/widgets/BottomBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void iniState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
 
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF1E1E1E),
      ),
      routes: {
        "/": (context) => BottomBar(),
      },
    );
  }
}
