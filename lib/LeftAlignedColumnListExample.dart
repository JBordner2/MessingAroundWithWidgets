import 'package:flutter/material.dart';

class LeftAlignedColumnListExample extends StatelessWidget {
  const LeftAlignedColumnListExample({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //       home: Scaffold(
  //           body: Align(
  //             alignment: Alignment.centerLeft,
  //             child: Text("HEY JACK"),
  //           )
  //       )
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Column(
              children: [
                Row(
                  children: [
                    Text("Left Side"),
                    Spacer(),
                    Text("Right Side")
                  ],
                ),

                Spacer(),

                Row(
                  children: [
                    Text("Left Side"),
                    Spacer(),
                    Text("Right Side")
                  ],
                ),

                Spacer(),

                Row(
                  children: [
                    Text("Left Side"),
                    Spacer(),
                    Text("Right Side")
                  ],
                ),
              ],
            )
        )
    );
  }
}

