import 'package:flutter/material.dart';
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

  String time = "loading";

  void setupWorldTime() async {
    WorldTimeService worldTimeSerivce = WorldTimeService(
      location: "Berlin",
      flag: "/assets/images/27.jpeg",
      url: "Asia/Kathmandu",
    );

    await worldTimeSerivce.getTime();
    // print(worldTimeSerivce.time);
    setState(() {
      time = worldTimeSerivce.time;
    });
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
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Text(
          time,
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
