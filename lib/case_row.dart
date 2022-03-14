import 'package:flutter/material.dart';


class CasesListView extends StatefulWidget {
   CasesListView({Key? key}) : super(key: key);

  @override
  State<CasesListView> createState() => _CasesListViewState();
  final store = CasesListViewStore();
}

class _CasesListViewState extends State<CasesListView> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calendar"),
        ),
        body: Container(
          child: ListView.separated(
            padding: EdgeInsets.all(0),
              itemBuilder: (BuildContext context, int index) {
                return CaseRow(caseModel: widget.store.data[index]);
              },
              separatorBuilder: (context, index) => Divider(
                thickness: 0.5,
              ),
              itemCount: widget.store.data.length),
        ),
      )
    );
  }
}

class CasesListViewStore {
  final data = [
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left"),
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left"),
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left"),
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left"),
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left"),
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left"),
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left"),
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left"),
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left"),
    CaseModel(481579, "Confirmed", "NGUYEN, STEVEN", "Dr. P Phillips Hospital", "Knee", "Legion Revision", "Left")
  ];
}

class CaseModel {
  final int number;
  final String status;
  final String physician;
  final String hospital;
  final String procedure;
  final String subProcedure;
  final String bodySide;

  CaseModel(@required this.number, @required this.status, @required this.physician, @required this.hospital, @required this.procedure, @required this.subProcedure, @required this.bodySide);
}

class CaseRow extends StatefulWidget {
  const CaseRow({Key? key, required this.caseModel}) : super(key: key);

  final CaseModel caseModel;

  @override
  State<CaseRow> createState() => _CaseRowState();
}

class _CaseRowState extends State<CaseRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
            CaseLeftColumn(caseModel: widget.caseModel), Spacer(), CaseRightColumn(caseModel: widget.caseModel)
        ],
      // child: Row(
      //   children: [
      //     Expanded(
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: [CaseLeftColumn(caseModel: widget.caseModel), Spacer(), CaseRightColumn(caseModel: widget.caseModel)],
      //       ) ,
      //     )
      //   ],
      ),
    );
  }
}

class CaseLeftColumn extends StatefulWidget {
  const CaseLeftColumn({Key? key, required this.caseModel}) : super(key: key);
  final CaseModel caseModel;

  @override
  State<CaseLeftColumn> createState() => _CaseLeftColumnState();
}

class _CaseLeftColumnState extends State<CaseLeftColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children:
        [
          Align(
            alignment: Alignment.bottomLeft,
            child: Text("#481579"),
          ),

          Container(
              child: Text("Knee", textAlign: TextAlign.left)
          ),

          Container(
              child: Text("Legion Revision", textAlign: TextAlign.left)
          ),

          Container(
              child: Text("Left", textAlign: TextAlign.left)
          ),
        ],
      )
    );
  }
}

class CaseRightColumn extends StatefulWidget {
  const CaseRightColumn({Key? key, required this.caseModel}) : super(key: key);
  final CaseModel caseModel;

  @override
  State<CaseRightColumn> createState() => _CaseRightColumnState();
}

class _CaseRightColumnState extends State<CaseRightColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Nguyen, Steve"),
        Text("Dr. P Phillips Hospital"),
      ],
    );
  }
}
