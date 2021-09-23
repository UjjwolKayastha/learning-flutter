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
        title: Text("The Beatles"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      backgroundColor: Colors.grey[900],
      body: Container(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Title",
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    color: Colors.white,
                    fontFamily: "IndieFlower"),
              ),
              Text(
                "Hey Jude",
                style: TextStyle(
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                    color: Colors.amberAccent,
                    fontFamily: "IndieFlower"),
              ),
              SizedBox(height: 30.0),
              Text(
                "Artist",
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    color: Colors.white,
                    fontFamily: "IndieFlower"),
              ),
              Text(
                "The Beatles",
                style: TextStyle(
                    fontSize: 28.0,
                    letterSpacing: 2.0,
                    color: Colors.amberAccent,
                    fontFamily: "IndieFlower"),
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "thebeatles@gmail.com",
                    style: TextStyle(
                        color: Colors.amber, letterSpacing: 1.0, fontSize: 20),
                  )
                ],
              ),
              SizedBox(height: 20.0),
              Divider(
                height: 30.0,
                color: Colors.grey[800],
              ),
              SizedBox(height: 30.0),
              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/heyjude.jpeg'),
                  radius: 100,
                ),
              ),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(
                        Icons.album,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Hey Jude",
                        style: TextStyle(
                            color: Colors.amber,
                            letterSpacing: 1.0,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Release Year",
                        style: TextStyle(
                            color: Colors.amber,
                            letterSpacing: 1.0,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "1968",
                        style: TextStyle(
                            color: Colors.amber,
                            letterSpacing: 1.0,
                            fontSize: 20),
                      ),
                    ],
                  )
                ],
              )
            ],
          )

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

          // child: IconButton(
          //   icon: Icon(Icons.mail),
          //   onPressed: () {
          //     print('clicked man clicked.');
          //   },
          //   color: Colors.red[300],
          // ),

          //container ko properties
          // color: AppTheme.primaryColor,
          // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          // margin: EdgeInsets.all(20),

          // child: Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,  //row ma main axis is row
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: <Widget>[
          //     IconButton(
          //       icon: Icon(Icons.mail),
          //       onPressed: () {
          //         print('clicked man clicked.');
          //       },
          //       color: Colors.red[300],
          //     ),
          //     Text("Yoyo"),
          //     Container(
          //       color: Colors.cyan,
          //       padding: EdgeInsets.all(30.0),
          //       child: Text("Ho ho"),
          //     )
          //   ],
          // ),

          // child: Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   crossAxisAlignment: CrossAxisAlignment.end,
          //   children: [
          //     Row(
          //       mainAxisAlignment:
          //           MainAxisAlignment.spaceBetween, //row ma main axis is row
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [Text("Hello"), Text("BRO")],
          //     ),
          //     Container(
          //         padding: EdgeInsets.all(30.0),
          //         child: Text("2"),
          //         color: Colors.cyan),
          //     Expanded(
          //       flex: 2,
          //       child: Container(
          //           padding: EdgeInsets.all(40.0),
          //           child: Text("3"),
          //           color: Colors.redAccent),
          //     ),
          //     Expanded(
          //       flex: 3,
          //       child: Container(
          //           padding: EdgeInsets.all(20.0),
          //           child: Text("1"),
          //           color: Colors.amber),
          //     ),
          //   ],
          // ),
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
