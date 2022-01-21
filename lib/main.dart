import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/material.dart';
import 'custom.dart';
import "QuoteCard.dart";

void main() {
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
    Quote(text: "An if can be followed by an optional else block"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text(
          "Quotess",
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.grey[200],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
