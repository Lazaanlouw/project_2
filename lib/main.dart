import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: list(),
  ));
}

//stateful Widget
class list extends StatefulWidget {
  const list({Key? key}) : super(key: key);

  @override
  State<list> createState() => _listState();
}

class _listState extends State<list> {
  //List of Data
  List<Quote> quotes = [
    Quote(
        author: 'Spiderman',
        text: 'With great power comes great responsibility.'),
    Quote(
        author: 'Lezaan',
        text: 'If you have nothing good to say then dont say anything at all.'),
    Quote(author: 'Jesus', text: 'Be still and know.'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[300],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Text('My Second Project'),
        ),
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}
