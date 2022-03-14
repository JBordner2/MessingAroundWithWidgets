import 'package:flutter/material.dart';

class HardCodedNameList extends StatelessWidget {
  const HardCodedNameList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        top: true,
        child: Scaffold(
          body: LeastUglyListView(),
        )
      )
    );
  }
}

class UglyList extends StatelessWidget {
  const UglyList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text("Entry A")),
        ),

        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text("Entry B")),
        ),

        Container(
          height: 50,
          color: Colors.amber[400],
          child: const Center(child: Text("Entry C")),
        ),

        Container(
          height: 50,
          color: Colors.amber[300],
          child: const Center(child: Text("Entry D")),
        ),

        Container(
          height: 50,
          color: Colors.amber[200],
          child: const Center(child: Text("Entry E")),
        ),

        Container(
          height: 300,
          color: Colors.amber[100],
          child: const Center(child: Text("Entry F")),
        )
      ],
    );
  }
}

class ALessUglyListView extends StatefulWidget {
  const ALessUglyListView({Key? key}) : super(key: key);

  @override
  State<ALessUglyListView> createState() => _ALessUglyListView();
}

class _ALessUglyListView extends State<ALessUglyListView> {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 400];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}'))
        );
      },
    );
  }
}


class LeastUglyListView extends StatefulWidget {
  const LeastUglyListView({Key? key}) : super(key: key);

  @override
  State<LeastUglyListView> createState() => _LeastUglyListView();
}

class _LeastUglyListView extends State<LeastUglyListView> {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 50,
          color: Colors.amber[colorCodes[index]],
          child: Center(child: Text('Entry ${entries[index]}')),
        );
      },

      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}


