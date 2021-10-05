import 'package:flutter/material.dart';
import 'package:learn_rest/app/services/cov_api.dart';
import 'package:learn_rest/app/services/cov_api_service.dart';
import 'package:learn_rest/app/ui/dashboard.dart';
import 'package:provider/provider.dart';

import 'app/repositories/data_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => DataRepository(
        apiService: APIService(
          API.sandbox(),
        ),
      ),
      child: MaterialApp(
        title: 'Corona Stats',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xFF101010),
          cardColor: const Color(0xFF222222),
        ),
        home: const Dashboard(),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({Key? key, required this.title}) : super(key: key);

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String _accessToken = "";
//   int _cases = 0;
//   int _deaths = 0;

//   void _updateAccessToken() async {
//     final apiService = APIService(API.sandbox());
//     final accessToken = await apiService.getAccessToken();
//     final cases = await apiService.getEndpointData(
//         accessToken: accessToken, endpoint: Endpoint.cases);
//     final deaths = await apiService.getEndpointData(
//         accessToken: accessToken, endpoint: Endpoint.deaths);
//     setState(() {
//       _accessToken = accessToken;
//       _cases = cases;
//       _deaths = deaths;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             if (_cases != 0)
//               Text(
//                 _cases.toString(),
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//             if (_deaths != 0)
//               Text(
//                 _deaths.toString(),
//                 style: Theme.of(context).textTheme.headline4,
//               ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _updateAccessToken,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
