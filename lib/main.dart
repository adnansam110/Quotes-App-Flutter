import 'package:flutter/material.dart';
import 'qoutes.dart';
import "quote_card.dart";

void main() {
  runApp(const MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Qoute> qoutes = [
    Qoute(text: "Hi, My name is Adnan Sameer", author: "Adnan Sameer"),
    Qoute(text: "Hi, My name is Darain", author: "Darain"),
    Qoute(text: "Hi, My name is Dawood", author: "Dawood Shahid"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Qoutes"),
        backgroundColor: Colors.red[300],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: qoutes
            .map((quote) => QouteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      qoutes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
