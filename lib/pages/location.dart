import 'package:flutter/material.dart';
class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Choose Location"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.black,
      ),



    );
  }
}
