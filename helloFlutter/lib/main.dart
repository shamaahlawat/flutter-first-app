import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  // List<String> quotes = [
  //   'Be yourself',
  //   'i AM ',
  //   'YESSS'
  // ];

  //now using from other class
  List<Quote> quotes = [
      Quote(author: 'oscar',text: 'be yourself'),
     Quote(author: 'oscar',text: 'be yourself'),
      Quote(author: 'oscar',text: 'be yourself')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[200],
      appBar:AppBar(
        title:Text('Awesome Quotes'),
        centerTitle:true,
        backgroundColor: Colors.redAccent,),
      body:Column(children: quotes.map((quote) { 
          return Text('${quote.text} - ${quote.author}');
      }).toList(),) //chidren property expect list always
    );
  }
}

