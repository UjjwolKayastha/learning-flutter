import 'package:flutter/material.dart';

class WorldTimeHome extends StatefulWidget {
  const WorldTimeHome({Key? key}) : super(key: key);

  @override
  _WorldTimeHomeState createState() => _WorldTimeHomeState();
}

class _WorldTimeHomeState extends State<WorldTimeHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, "/location");
              },
              icon: Icon(Icons.edit_location),
              label: Text("Edit Location"),
            ),
          ],
        ),
      ),
    );
  }
}
