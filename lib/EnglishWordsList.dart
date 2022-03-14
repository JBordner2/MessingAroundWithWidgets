import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class EnglishWords extends StatelessWidget {
  const EnglishWords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RandomWords()
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

/* The thing I don't get about this is how the index connects back up to _suggestions.
      For example, I created a listView in BuildingAList.dart and the ListView has a property ItemCount.
      In this scenaro there is no count so I just don't get how this works...

 */

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  // Where are we getting our context?
    Widget build(BuildContext context) { return Scaffold(
      appBar: AppBar(
        title: const Text('Startup Name Generator'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: /*1*/ (context, i) {
          if (i.isOdd) return const Divider(); /*2*/

          final index = i ~/ 2; /*3*/
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10)); /*4*/
          }
          return ListTile(
            title: Text(
              _suggestions[index].asPascalCase,
              style: _biggerFont,
            ),
          );
        },
      ),
    );
  }
}