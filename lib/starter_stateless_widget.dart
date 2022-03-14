import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'My Dog App',
//         home: Scaffold(
//           appBar: AppBar(
//             title: Text('Yelow Lab'),
//           ),
//           body: Center(
//             child: DecoratedBox(
//               decoration: BoxDecoration(color: Colors.lightBlueAccent),
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text('Rocky FOUR'),
//               ),
//             ),
//           ),
//           floatingActionButton: FloatingActionButton(
// onPressed: () => Navigator.of(context)
//     .push(CupertinoPageRoute(builder: (context) => MoreScreen())),
//           ),
//         ));
//   }
// }

class Basic extends StatelessWidget {
  const Basic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Jack",
    );
  }
}

class StringPrinter {
  void printJack() => print("Jack Bordner is my name");
}

// import 'package:chatter/Pages/calls_page.dart';
// import 'package:chatter/Pages/notifications_page.dart';
// import 'package:chatter/pages/contacts_page.dart';
// import 'package:chatter/pages/messages_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class HomeScreen extends StatelessWidget {
//   HomeScreen({Key? key}) : super(key: key);

//   final ValueNotifier<int> pageIndex = ValueNotifier(0);

//   final pages = const [
//     MessagesPage(),
//     NotificationsPage(),
//     CallsPage(),
//     ContactsPage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ValueListenableBuilder(
//         valueListenable: pageIndex,
//         builder: (BuildContext context, int value, _) {
//           return pages[value];
//         },
//       ),
//       bottomNavigationBar: _BottomNavigationBar(
//         onItemSelected: (index) {
//           pageIndex.value = index;
//         },
//       ),
//     );
//   }
// }

// class _BottomNavigationBar extends StatelessWidget {
//   const _BottomNavigationBar({Key? key, required this.onItemSelected})
//       : super(key: key);

//   final ValueChanged<int> onItemSelected;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         top: false,
//         bottom: true,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             _NavigationBarItem(
//               index: 0,
//               label: 'Messages',
//               icon: CupertinoIcons.bubble_left_bubble_right_fill,
//               onTap: onItemSelected,
//             ),
//             _NavigationBarItem(
//               index: 1,
//               label: 'Notifications',
//               icon: CupertinoIcons.bell_solid,
//               onTap: onItemSelected,
//             ),
//             _NavigationBarItem(
//               index: 2,
//               label: 'Calls',
//               icon: CupertinoIcons.phone_fill,
//               onTap: onItemSelected,
//             ),
//             _NavigationBarItem(
//               index: 3,
//               label: 'Contacts',
//               icon: CupertinoIcons.person_2_fill,
//               onTap: onItemSelected,
//             )
//           ],
//         ));
//   }
// }

// class _NavigationBarItem extends StatelessWidget {
//   const _NavigationBarItem(
//       {Key? key,
//       required this.index,
//       required this.label,
//       required this.icon,
//       required this.onTap})
//       : super(key: key);

//   final int index;
//   final String label;
//   final IconData icon;
//   final ValueChanged<int> onTap;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         onTap(index);
//       },
//       child: SizedBox(
//         height: 70,
//         child: Column(mainAxisSize: MainAxisSize.min, children: [
//           Icon(icon, size: 20),
//           const SizedBox(height: 8),
//           Text(
//             label,
//             style: const TextStyle(fontSize: 11),
//           ),
//         ]),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class CallsPage extends StatelessWidget {
//   const CallsPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const Center(child: Text('CallsPage'));
//   }
// }
