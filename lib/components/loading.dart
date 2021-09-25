import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:learnflutter/services/world_time_service.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // void getData() async {
  //   Response todos =
  //       await Dio().get("https://jsonplaceholder.typicode.com/todos/1");
  //   Map data = jsonDecode(todos.data); // response to json

  //   print(data);
  //   print(data["title"]);
  // }

  // String time = "loading";

  void setupWorldTime() async {
    WorldTimeService worldTimeService = WorldTimeService(
      location: "Banepa",
      flag: "/assets/images/27.jpeg",
      url: "Asia/Kathmandu",
    );

    await worldTimeService.getTime();
    // print(worldTimeSerivce.time);
    // setState(() {
    //   time = worldTimeService.time;
    // });

    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "location": worldTimeService.location,
      "time": worldTimeService.time,
      "flag": worldTimeService.flag,
      "isDayTime": worldTimeService.isDayTime,
    }); //doesnt stack
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("initState function ran");
    // getData();
    // print("ran before get data print");
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Padding(
      //   padding: EdgeInsets.all(50),
      //   child: Text(
      //     "loading",
      //     style: TextStyle(fontSize: 30),
      //   ),
      // ),
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 80.0,
        ),
      ),
    );
  }
}
