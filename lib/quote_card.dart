import 'package:flutter/material.dart';
import 'qoutes.dart';

class QouteCard extends StatelessWidget {
  final Qoute quote;
  final Function delete;
  const QouteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.grey[800],
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              quote.author,
              style: TextStyle(color: Colors.grey[900], fontSize: 16.0),
            ),
            SizedBox(height: 5.0),
            IconButton(
              onPressed: () => delete(),
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
