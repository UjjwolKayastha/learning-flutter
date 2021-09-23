import 'package:flutter/material.dart';

import 'package:learnflutter/quote.dart';
import 'package:learnflutter/utils/theme.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    Key? key,
    required this.context,
    required this.quote,
  }) : super(key: key);

  final BuildContext context;
  final Quote quote;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.quote,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(color: AppTheme.primaryColor, fontSize: 30),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }
}
