import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

class WorldTimeService {
  late String location; // location name for UI
  late String time; // time of that location
  late String flag; //url to asset icon
  late String url; //location url for api end point

  WorldTimeService({
    required this.location,
    required this.flag,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      Response response =
          await Dio().get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.toString()); // response to json

      // print(data);

      //get properties from data
      String dateTime = data['datetime'];
      String offsetHours = data['utc_offset'].toString().split(":")[0];
      String offsetMinutes = data['utc_offset'].toString().split(":")[1];

      // print({offsetHours, offsetMinutes});

      //create a date time object
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(
          hours: int.parse(offsetHours), minutes: int.parse(offsetMinutes)));
      // print({now, "0"});

      time = DateFormat.jm().format(now);
      // print({now, "1"});
    } catch (e) {
      print("CAUGHTHHTHT: $e");
      time = "Couldn't get the world time data.";
    }
  }
}
