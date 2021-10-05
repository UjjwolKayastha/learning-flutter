import 'package:flutter/material.dart';
import 'package:learn_rest/app/services/cov_api.dart';

class StatCard extends StatelessWidget {
  const StatCard({Key? key, required this.endpoint, required this.value})
      : super(key: key);

  final Endpoint endpoint;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Cases', style: Theme.of(context).textTheme.subtitle1),
            Text(value.toString(),
                style: Theme.of(context).textTheme.headline5),
          ]),
        ),
      ),
    );
  }
}
