import 'quote.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 6.0),
            FlatButton.icon(
                onPressed: delete,
              label: Text('Delete'),
              icon: Icon(Icons.delete),
            )

          ],
        ),
      ),
    );
  }
}
