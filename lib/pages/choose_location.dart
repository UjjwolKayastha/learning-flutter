import 'package:flutter/material.dart';
import 'package:learnflutter/services/world_time_service.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  // int counter = 0; //state

  //   //simulate network request for a username
  // void getData() async {
  //   String username = await Future.delayed(Duration(seconds: 3), () {
  //     //like settimeout in js
  //     return "YOhohoh";
  //   });

  //   String bio = await Future.delayed(Duration(seconds: 3), () {
  //     //like settimeout in js
  //     return "yo yo, ho ho, oh oh";
  //   });

  //   print(username + " " + bio);
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   print("initState function ran");
  //   getData();
  //   print("ran before get data print");
  // }

  List<WorldTimeService> locations = [
    WorldTimeService(location: 'London', flag: "uk.png", url: "Europe/London"),
    WorldTimeService(
        location: 'Banepa', flag: "nepal.png", url: "Asia/Kathmandu"),
    WorldTimeService(
        location: 'Sydney', flag: "australia.jpeg", url: "Australia/Sydney"),
    WorldTimeService(
        location: 'Berlin', flag: "germany.png", url: "Europe/Berlin"),
    WorldTimeService(
        location: 'Chicago', flag: "usa.png", url: "America/Chicago"),
    WorldTimeService(
        location: 'New York', flag: "usa.png", url: "America/New_York"),
    WorldTimeService(
        location: 'Nairobi', flag: "kenya.png", url: "Africa/Nairobi"),
  ];

  void updateTime(index) async {
    WorldTimeService worldTimeService = locations[index];
    await worldTimeService.getTime();
    //navigate to home screen
    Navigator.pop(context, {
      "location": worldTimeService.location,
      "time": worldTimeService.time,
      "flag": worldTimeService.flag,
      "isDayTime": worldTimeService.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {
    print("build function ran");

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     setState(() { //set state
      //       counter += 1;
      //     });
      //   },
      //   child: Text('COUNTER $counter'),
      // ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 1.0,
              horizontal: 4.0,
            ),
            child: Card(
              child: ListTile(
                onTap: () {
                  // print(locations[index].location);
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage("assets/images/${locations[index].flag}"),
                ),
              ),
            ),
          );
        }, //functions that takes to params
        itemCount: locations.length,
      ),
    );
  }
}
