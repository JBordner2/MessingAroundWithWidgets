import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


// LINK TO TUTORIAL: https://www.youtube.com/watch?v=hgPTvi0OM4A
class DataFromApi extends StatefulWidget {
  const DataFromApi({Key? key}) : super(key: key);

  @override
  State<DataFromApi> createState() => _DataFromApiState();
}

class _DataFromApiState extends State<DataFromApi> {
  Future getUserData() async {
    var response = await http.get(Uri.https('jsonplaceholder.typicode.com', 'users'));
    var jsonData = jsonDecode(response.body);
    List<User> users = [];

    for (var u in jsonData) {
      User user = User(u['name'], u['email'], u['username']);
      users.add(user);
    }

    print(users.length);
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
      ),
      body: Container(
        child
          : Card(child: FutureBuilder(
              future: getUserData(),
              builder: (context, snapshot) {
                if (snapshot.data == null) {
                  return Container(child: Center(child: Text('Loading....'),),);
                } else {
                  // TODO: Why is data not coming back as a list!?
                  // LINK TO TUTORIAL: https://www.youtube.com/watch?v=hgPTvi0OM4A
                  // return ListView.builder(itemCount: snapshot.data.length, itemBuilder: (context, i) {
                  //   return ListTile(tileColor: Colors.red,);
                  // });

                  return ListView.builder(itemCount: 4, itemBuilder: (context, i) {
                    return ListTile(tileColor: Colors.red,);
                  });
                }
              },
            ),
          ),
        ),
      );
    }
}


class User {
  final String name, email, userName;
  User(this.name, this.email, this.userName);
}