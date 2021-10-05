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
    data = data.isNotEmpty
        ? data
        : ModalRoute.of(context)?.settings.arguments as Map;
    print("Data: $data");

    //set background
    String bgImage = data['isDayTime'] ? 'day.jpeg' : 'night.jpeg';

    Color? bgColor = data['isDayTime'] ? Colors.blue : Colors.indigo[900];

    // print("BG IMAGE: $bgImage");

    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/$bgImage'),
            fit: BoxFit.cover,
          ), //background image
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
            child: Column(
              children: [
                TextButton.icon(
                  onPressed: () async {
                    dynamic result =
                        await Navigator.pushNamed(context, "/location");
                    // print("RESULT FROM CLICKING:  $result");
                    setState(() {
                      data = {
                        "time": result["time"],
                        "location": result["location"],
                        "isDayTime": result["isDayTime"],
                        "flag": result["flag"],
                      };
                    });
                  },
                  icon: Icon(
                    Icons.edit_location,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Edit Location",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
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
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/${data["flag"]}"),
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
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
