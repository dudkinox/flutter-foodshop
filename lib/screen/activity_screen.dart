import 'package:flutter/material.dart';
import '../common/tab_activity.dart';

class Activity extends StatefulWidget {
  final String cusId;

  const Activity({Key? key, required this.cusId}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: const TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'กำลังดำเนินการ'),
              Tab(icon: Icon(Icons.done), text: 'รายการสำเร็จ'),
              Tab(icon: Icon(Icons.delete), text: 'รายการที่ยกเลิก'),
            ],
          ),
          body: TabBarView(
            children: [
              TabActivity(widget: widget, option: "progress"),
              TabActivity(widget: widget, option: "done"),
              TabActivity(widget: widget, option: "cancel"),
            ],
          ),
        ),
      ),
    );
  }
}
