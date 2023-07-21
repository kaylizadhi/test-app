import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:test_app/constants/colors.dart';
import 'package:test_app/constants/urls.dart';
import 'package:test_app/widgets/note_item.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: cMain,
        centerTitle: true,
        title: Text('Catatanku')
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            // searchBar(),
            Expanded(
              child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 20),
                ),
                NoteItem(),
                NoteItem(),
                NoteItem(),
                NoteItem(),
                NoteItem(),
                NoteItem(),
                NoteItem(),
              ],
              )
            )
        ])
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   Client client = http.Client();
// }

// Widget searchBar() {
//   return Container(
//       padding: EdgeInsets.symmetric(horizontal: 15),
//       decoration: BoxDecoration(
//           color: cBackground, borderRadius: BorderRadius.circular(20)),
//       child: TextField(
//           decoration: InputDecoration(
//         contentPadding: EdgeInsets.all(0),
//         prefixIcon: Icon(
//           Icons.search,
//           color: cText,
//           size: 20,
//         ),
//         prefixIconConstraints: BoxConstraints(
//           maxHeight: 25,
//           minWidth: 25,
//         ),
//         border: InputBorder.none,
//         hintText: 'Search',
//         hintStyle: TextStyle(color: cText),
//       )));
// }