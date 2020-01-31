import 'package:flutter/material.dart';

class Tentang extends StatefulWidget {
  @override
  _TentangState createState() => _TentangState();
}

class _TentangState extends State<Tentang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tentang"),
      ),
      body: Container(
        child: Center(
          child: Text("Tentang"),
        ),
      ),
    );
  }
}
