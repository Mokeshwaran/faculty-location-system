import 'package:flutter/material.dart';
import 'package:fls/models/myclass.dart';

class MyClassTile extends StatefulWidget {
  final MyClass myclass;
  const MyClassTile({Key? key, required this.myclass}) : super(key: key);

  @override
  State<MyClassTile> createState() => _MyClassTileState();
}

class _MyClassTileState extends State<MyClassTile> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Card(
        margin: const EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 6.0),
        child: ListTile(
          title: Text(widget.myclass.name!),
          subtitle: Text('Assigned to ${widget.myclass.mycls}'),
        ),
      ),
    );
  }
}
