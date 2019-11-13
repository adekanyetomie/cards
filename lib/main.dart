import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quotecard.dart';

void main() => runApp(MaterialApp(
  home:QuoteList() ,
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes =[
  Quote(text:'In all you do, try as much as possible to have fun', author:'Tomi'),
  Quote(text:'In all you do, try as much as possible to have fun', author:'Tomi'),
  Quote(text:'In all you do, try as much as possible to have fun', author:'Tomi'),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      appBar: AppBar(
        title: Text('Life Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),
      body: Column(
        children: quotes.map((quote) =>  QuoteCard(quote: quote)).toList(),
      )
    );
  }
}

