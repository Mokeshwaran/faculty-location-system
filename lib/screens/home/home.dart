import 'package:animations/animations.dart';
import 'package:fls/models/myclass.dart';
import 'package:fls/screens/home/userHelp.dart';
import 'package:fls/services/dbase.dart';
import 'package:fls/screens/home/class_list.dart';
import 'package:fls/shared/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool search = false;
  @override
  Widget build(BuildContext context) {
    showTextField() {
      return SizedBox(
        height: 45.0,
        child: TextField(
          style: help_textstyle2,
          cursorColor: Color(0xffebebeb),
          autofocus: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(8.0),
            prefixIcon: Icon(
              Icons.search_rounded,
              color: Color(0xffebebeb),
              size: 25.0,
            ),
            hintText: 'Search for faculties',
            hintStyle: TextStyle(fontSize: 17.0, color: Color(0xffebebeb)),
            fillColor: Color(0xffef4b4c),
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffff2400), width: 1.5),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffff2400), width: 1.5),
                borderRadius: BorderRadius.circular(20)),
          ),
        ),
      );
    }

    return StreamProvider<List<MyClass>?>.value(
        initialData: null,
        value: DbaseService(uid: null).classes,
        child: Scaffold(
          backgroundColor: Color(0xff43506c),
          appBar: AppBar(
            title: search
                ? showTextField()
                : Text('Faculty Location System',
                    style: TextStyle(color: Color(0xffebebeb))),
            backgroundColor: Color(0xff3d619b),
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: search
                    ? Icon(
                        Icons.done_rounded,
                        color: Color(0xffef4b4c),
                      )
                    : Icon(Icons.search_rounded),
                color: Color(0xffebebeb),
                iconSize: 25,
                onPressed: () {
                  setState(() {
                    search = !search;
                  });
                },
              )
            ],
          ),
          body: Container(
            padding:
                const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10.0),
            child: Column(
              children: const <Widget>[
                Expanded(child: MyClassList()),
              ],
            ),
          ),
          floatingActionButton: OpenContainer(
              transitionDuration: const Duration(milliseconds: 400),
              closedShape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              closedColor: Color(0xffef4b4c),
              closedBuilder: (BuildContext c, VoidCallback action) =>
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.help_rounded,
                      color: Color(0xffebebeb),
                      size: 35.0,
                    ),
                  ),
              openBuilder: (BuildContext c, VoidCallback action) =>
                  const Help(),
              tappable: true),
        ));
  }
}
