import 'package:flutter/material.dart';
import 'package:learnflutter/utils/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: appTheme(),
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hey Jude"),
        centerTitle: true,
        backgroundColor: Colors.blue[400],
      ),
      body: Center(
        // child: Text(
        //   "Hey Judes",
        //   style: TextStyle(
        //       fontSize: 20.0,
        //       fontWeight: FontWeight.bold,
        //       letterSpacing: 2.0,
        //       color: Colors.grey[600],
        //       fontFamily: "IndieFlower"),
        // ),
        // child: Image(
        //   image: NetworkImage(
        //       'https://images.unsplash.com/photo-1632341111880-8fc242477b57?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=687&q=80'),
        // ),
        // child: Image(
        //   image: AssetImage('assets/images/27.jpeg'),
        // ),
        // child: Icon(Icons.airport_shuttle, color: AppTheme.completeBlack),
        // child: ElevatedButton.icon(
        //   icon: Icon(Icons.mail),
        //   label: Text("Mail"),
        //   onPressed: () {
        //     print('clicked man clicked.');
        //   },
        // ),
        child: IconButton(
          icon: Icon(Icons.mail),
          onPressed: () {
            print('clicked man clicked.');
          },
          color: Colors.red[300],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "Click",
          style: Theme.of(context).textTheme.bodyText1,
        ),
        onPressed: () => {},
        backgroundColor: Colors.blue[400],
      ),
    );
  }
}
