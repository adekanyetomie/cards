import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'quote.dart';

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
  Widget quoteTemplate (quote){
    return Card(
      margin: EdgeInsets.fromLTRB(13.0, 13.0, 13.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style:TextStyle(
                fontSize: 18.0,
                color:Colors.blueGrey[800]
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style:TextStyle(
                  fontSize: 14.0,
                  color:Colors.blue[800]
              ),
            ),

          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueGrey[800],
      appBar: AppBar(
        title: Text('Life Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate (quote)).toList(),
      )
    );
  }
}
