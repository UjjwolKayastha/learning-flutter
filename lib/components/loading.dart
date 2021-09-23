import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    Response todos =
        await Dio().get("https://jsonplaceholder.typicode.com/todos/1");
    Map data = jsonDecode(todos.data); // response to json

    print(data);
    print(data["title"]);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState function ran");
    getData();
    print("ran before get data print");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("LOADINDINDINgg"),
    );
  }
}
