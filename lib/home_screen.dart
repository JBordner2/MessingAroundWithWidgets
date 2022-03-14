import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_fun/FlutterLayoutDemo.dart';
import 'package:widget_fun/more_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: "_title",
  //     home: Scaffold(
  //       body: const MyStatefulWidget(),
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    return const FlutterLayoutDemo();
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.of(context).push(CupertinoPageRoute(
                fullscreenDialog: true,
                builder: (context) => MoreListScreen(),
              ));
            },
            child: const Text('More Screen'),
          ),
        ],
      ),
    );
  }
}

class DismissBtn extends StatefulWidget {
  const DismissBtn({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _DismissBtn extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.of(context).pop(CupertinoPageRoute(
                fullscreenDialog: true,
                builder: (context) => MoreListScreen(),
              ));
            },
            child: const Text('Dismiss'),
          ),
        ],
      ),
    );
  }
}
