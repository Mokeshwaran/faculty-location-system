import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fls/models/myclass.dart';
import 'package:fls/screens/home/class_settings_form.dart';
import 'package:fls/shared/text_styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'myclass_tile.dart';

//myclasslist
class MyClassList extends StatefulWidget {
  const MyClassList({Key? key}) : super(key: key);

  @override
  _MyClassListState createState() => _MyClassListState();
}

class _MyClassListState extends State<MyClassList> {
  @override
  Widget build(BuildContext context) {
    final classes = Provider.of<List<MyClass>?>(context) ?? [];

    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: classes.length,
      itemBuilder: (context, index) {
        return MyClassTile(myclass: classes[index]);
      },
    );
  }
}
