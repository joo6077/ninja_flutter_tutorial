import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
        home: MaterialApp(
      home: QuoteList(),
    )));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<String> quotes = [
    'Be yourself; everyone else is already taken',
    'I have nothing to declare excpet my genius',
    'The truth is rarely pure and never simple',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('AWESOME QUOTES'),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
