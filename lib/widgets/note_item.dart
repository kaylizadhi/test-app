// import 'package:flutter/material.dart';
// import 'package:test_app/constants/colors.dart';
// import 'package:test_app/models/note_models.dart';
// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class NoteItem extends StatelessWidget {
//   const NoteItem({Key? key, required this.data}) : super(key: key);
//   final NoteModels data;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(bottom: 20),
//       child: ListTile(
//         onTap: () {
//           print("Clicked on note");
//         },
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//         contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//         tileColor: cBackground,
//         title: Text('${data.fields!.title}',
//             style: TextStyle(
//               fontSize: 16,
//               color: cText,
//               fontWeight: FontWeight.bold,
//             )
//           ),
//           trailing: Container(
//             padding: EdgeInsets.all(0),
//             margin: EdgeInsets.symmetric(vertical: 5),
//             height: 35, width: 35,
//             decoration: BoxDecoration(
//               color: cMain,
//               borderRadius: BorderRadius.circular(5),
//             ),
//             child: IconButton(icon: Icon(Icons.delete),
//             color: cBackground,
//             iconSize: 18, 
//             onPressed: () => {
//               showAlertDialog(context)
//             },),
//           )
//       ),
//     );
//   }
//   showAlertDialog(BuildContext context) {

//   // set up the buttons
//   Widget cancelButton = TextButton(
//     child: Text("Cancel"),
//     onPressed:  () => Navigator.pop(context),
//   );
//   Widget confirmDeleteButton = TextButton(
//     child: Text("Delete"),
//     onPressed:  () async {
//       String deleteUrl = 'http://127.0.0.1:8000/notes/<id>/delete';
//       var url = Uri.parse(deleteUrl);
//       final response = await http.post(url,
//         body: json.encode(
//         {"id" : data.pk}
//       ));
//       Navigator.pop(context);
//     },
//   );

//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: Text("Delete Note"),
//     content: Text("Are you sure you want to delete ${data.fields!.title}?"),
//     actions: [
//       cancelButton,
//       confirmDeleteButton,
//     ],
//   );

//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }

// }

