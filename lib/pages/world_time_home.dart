import 'package:flutter/material.dart';

class WorldTimeHome extends StatefulWidget {
  const WorldTimeHome({Key? key}) : super(key: key);

  @override
  _WorldTimeHomeState createState() => _WorldTimeHomeState();
}

class _WorldTimeHomeState extends State<WorldTimeHome> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)?.settings.arguments as Map;
    // print("Data: $data");

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/location");
                },
                icon: Icon(Icons.edit_location),
                label: Text("Edit Location"),
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data["location"],
                    style: TextStyle(
                      fontSize: 30.0,
                      letterSpacing: 2.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                data["time"],
                style: TextStyle(
                  fontSize: 70.0,
                  letterSpacing: 2.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
