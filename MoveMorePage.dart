import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class MoreListScreen extends StatelessWidget {
  const MoreListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text("Jack Bordner", textAlign: TextAlign.left),
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 12),
          child: MoreListView(),
        ),
      )
    );
  }
}


class MoreListView extends StatefulWidget {
  const MoreListView({Key? key}) : super(key: key);

  @override
  State<MoreListView> createState() => _MoreListViewState();
}

class _MoreListViewState extends State<MoreListView> {

  final store = MoreScreenViewModel();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: store.data.length,
      itemBuilder: (BuildContext context, int index) {
        return MoreColumn(dataModel: store.data[index]);
      },
      separatorBuilder: (context, index) => Divider(
        thickness: 0.5,
      ),
    );
  }
}

class MoreColumn extends StatefulWidget {
  final MorePageRowModel dataModel;
  const MoreColumn({Key? key, required this.dataModel}) : super(key: key);

  @override
  State<MoreColumn> createState() => _MoreColumnState();
}

class _MoreColumnState extends State<MoreColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12),
      child: Row(
        children: [CupertinoButton(child: Icon(widget.dataModel.icon, size: 24, color: Colors.black), onPressed: null), SizedBox(width: 8), Text(widget.dataModel.name, style: GoogleFonts.b612Mono(fontSize: 15)), Spacer(), CupertinoButton(child: Icon(CupertinoIcons.chevron_right, size: 18, color: Colors.black.withAlpha(100)), onPressed: null)],
      ),
      height: 50,
    );
  }
}

class MoreScreenViewModel {
  final data = [
    MorePageRowModel("Price Lookup", CupertinoIcons.money_dollar),
    MorePageRowModel("Stock Levels", CupertinoIcons.collections),
    MorePageRowModel("Stock Orders", CupertinoIcons.cart),
    MorePageRowModel("Shipments", CupertinoIcons.cube),
    MorePageRowModel("Directory", CupertinoIcons.folder),
    MorePageRowModel("Audits", CupertinoIcons.check_mark),
    MorePageRowModel("Reports", CupertinoIcons.search),
    MorePageRowModel("Inventory", CupertinoIcons.cube)];
}

// class More
class MorePageRowModel {
  final String name;
  final IconData icon;
  MorePageRowModel(@required this.name, @required this.icon);
}