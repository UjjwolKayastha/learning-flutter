import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void getData() async {
    //simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3), () {
      //like settimeout in js
      return "YOhohoh";
    });

    String bio = await Future.delayed(Duration(seconds: 3), () {
      //like settimeout in js
      return "yo yo, ho ho, oh oh";
    });

    print(username + " " + bio);
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
    print("build function ran");

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text('COUNTER $counter'),
      ),
    );
  }
}
