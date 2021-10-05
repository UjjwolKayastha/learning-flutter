import 'package:flutter/material.dart';
import 'package:learn_rest/app/components/card.dart';
import 'package:learn_rest/app/repositories/data_repository.dart';
import 'package:learn_rest/app/services/cov_api.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _cases = 0;

  @override
  void initState() {
    super.initState();
    _updateData();
  }

  Future<void> _updateData() async {
    final dataRepository = Provider.of<DataRepository>(context, listen: false);
    final cases = await dataRepository.getEndpointData(Endpoint.cases);
    setState(() {
      _cases = cases;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Corona Stats'),
      ),
      body: ListView(
        children: <Widget>[
          StatCard(endpoint: Endpoint.cases, value: _cases),
        ],
      ),
    );
  }
}
