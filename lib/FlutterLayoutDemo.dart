import 'package:flutter/material.dart';

class FlutterLayoutDemo extends StatelessWidget {
  const FlutterLayoutDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    return MaterialApp(
      title: "Flutter layout demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection
          ],
        ),
      ),
    );
  }
}



/*
1: Putting a Column inside an Expanded widget stretches the column to use all remaining free space in the row. Setting the crossAxisAlignment property to CrossAxisAlignment.start positions the column at the start of the row.
2: Putting the first row of text inside a Container enables you to add padding. The second child in the Column, also text, displays as grey.
3: The last two items in the title row are a star icon, painted red, and the text “41”. The entire row is in a Container and padded along each edge by 32 pixels. Add the title section to the app body like this:
 */