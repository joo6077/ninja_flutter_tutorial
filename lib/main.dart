import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
        home: MaterialApp(
      home: QuoteList(),
    )));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Osca Wilde',
        text: 'Be yourself; everyone else is already taken'),
    Quote(
        author: 'Osca Wilde',
        text: 'I have nothing to declare except my genius'),
    Quote(
        author: 'Osca Wilde',
        text: 'The truth is rarely pure and never simple'),
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
        children: quotes
            .map((quote) => Text('${quote.text}  - ${quote.author}'))
            .toList(),
      ),
    );
  }
}
