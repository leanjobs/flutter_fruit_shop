import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: const Text('Screen5')),
      body: const Center(
        child: Text(
          'Screen5',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}