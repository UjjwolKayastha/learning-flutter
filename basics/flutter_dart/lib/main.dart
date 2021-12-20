import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 2;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  void _callContact() {
    print("Calling");
  }

  void _itemTapped(int idx) {
    setState(() {
      _selectedIndex = idx;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.logout_rounded),
        ),
        actions: <Widget>[
          const CircleAvatar(
            backgroundImage: AssetImage("assets/images/batman.jpg"),
          ),
          IconButton(
            onPressed: _callContact,
            icon: const Icon(Icons.cabin),
            tooltip: "Cabin Visit",
          )
        ],
      ),
      body: Center(
        // child: Container(
        //   alignment: Alignment.bottomLeft,
        //   child: Align(
        //     alignment: Alignment.topCenter,
        //     child: Padding(
        //       padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
        //       child: ConstrainedBox(
        //         constraints: const BoxConstraints(
        //           minWidth: 30.0,
        //           minHeight: 20.0,
        //         ),
        //         child: const Text(
        //           "YOOUYYO!!!",
        //           style: TextStyle(
        //             color: Colors.pink,
        //             fontSize: 20.0,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: const <Widget>[
        //     Padding(
        //       padding: EdgeInsets.all(8.0),
        //       child: Text(
        //         "HELLO WORLD",
        //         style: TextStyle(
        //           color: Colors.pink,
        //           fontSize: 30.0,
        //         ),
        //       ),
        //     ),
        //     Baseline(
        //       baseline: 0,
        //       baselineType: TextBaseline.ideographic,
        //       child: Padding(
        //         padding: EdgeInsets.fromLTRB(0, 0, 10.0, 0),
        //         child: Text("YO!!"),
        //       ),
        //     ),
        //     Baseline(
        //       baseline: 40,
        //       baselineType: TextBaseline.alphabetic,
        //       child: Text("HO HO!!"),
        //     ),
        //   ],
        // ),
        child: Column(
          children: <Widget>[
            Transform(
              // origin: const Offset(100, 100),
              transform: Matrix4.rotationZ(0),
              child: const SizedBox(
                width: 200,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Image(
                      // image: NetworkImage(
                      //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-AAoMWIxgmQr2hf3fX8l9daS0-pcQYShXjw&usqp=CAU",
                      // ),
                      image: AssetImage('assets/images/batman.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            Listener(
              onPointerDown: (PointerDownEvent event) {
                // ignore: avoid_print
                print("CLICKED");
              },
              onPointerHover: (PointerHoverEvent event) {
                // ignore: avoid_print
                print("GAYO MATHI BATATTATA");
              },
              child: const Text(
                "HELLO WORLD",
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 20.0,
                ),
              ),
            ),
            GestureDetector(
              // onTap: () {
              //   print("TAPPEPPEPD");
              // },
              // onDoubleTap: () {
              //   print("DOUBLE TAPPEPPEPD");
              // },
              // onLongPress: () {
              //   print("LONG PRESSED");
              // },
              // onLongPressUp: () {
              //   print("LONG PRESS RELEASED");
              // },
              // onVerticalDragStart: (DragStartDetails details) {
              //   print("STAETeeD DRAGGINF");
              //   print(details);
              // },
              // onVerticalDragUpdate: (DragUpdateDetails details) {
              //   print("Drag Update");
              //   print(details.globalPosition);
              // },
              // onHorizontalDragStart: (DragStartDetails details) {
              //   print("STAETeeD DRAGGINF");
              //   print(details);
              // },
              // onHorizontalDragUpdate: (DragUpdateDetails details) {
              //   print("Drag Update");
              //   print(details.globalPosition);
              // },
              // onPanStart: (DragStartDetails details) {
              //   print("STAETeeD DRAGGINF PANNNNN");
              //   print(details);
              // },
              // onPanUpdate: (DragUpdateDetails details) {
              //   print("UPdated DRAGGINF PANNNNN");
              //   print(details);
              // },
              child: const SizedBox(
                child: Center(
                  child: Text(
                    "Gesture Detector",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: Center(
                child: TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Type anything",
                  ),
                ),
              ),
            ),
          ],
        ),
        // child: Stack(
        //   // mainAxisAlignment: MainAxisAlignment.center,
        //   // crossAxisAlignment: CrossAxisAlignment.start,
        //   alignment: AlignmentDirectional.bottomEnd,
        //   children: const <Widget>[
        //     Text(
        //       "HELLO WORLD",
        //       style: TextStyle(
        //         color: Colors.pink,
        //         fontSize: 20.0,
        //       ),
        //     ),
        //     Text("YO!!"),
        //   ],
        // ),
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit_outlined),
            label: "AC",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_location,
            ),
            label: "Location",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.airplane_ticket,
            ),
            label: "Flight",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.email_rounded,
            ),
            label: "Email",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _itemTapped,
      ),
      // bottomNavigationBar: BottomAppBar(
      //   color: Colors.blueGrey,
      //   child: SizedBox(
      //     height: 50,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: const <Widget>[
      //         Icon(
      //           Icons.home,
      //         ),
      //         Icon(
      //           Icons.ac_unit_outlined,
      //         ),
      //         Icon(
      //           Icons.add_location,
      //         ),
      //         Icon(
      //           Icons.airplane_ticket,
      //         ),
      //         Icon(
      //           Icons.email_rounded,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
