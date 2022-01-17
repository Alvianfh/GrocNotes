import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes/model/note.dart';
import 'package:supercharged/supercharged.dart';

class CardWidget extends StatelessWidget {
  CardWidget({
    Key? key,
    required this.note,
    required this.index,
  }) : super(key: key);

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    final time = DateFormat.yMMMd().format(note.createdTime);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: 'FCFCFC'.toColor(),
      elevation: 2.0,
      margin: EdgeInsets.symmetric(vertical: 15.0,horizontal: 5),
      child: Container(
        constraints: BoxConstraints(minHeight: 100),
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15),
            Text(
              time,
              style: TextStyle(color: Colors.grey.shade700),
            ),
            SizedBox(height: 10),
            Text(
              note.title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Text(
            //   note.description,
            //   style: TextStyle(
            //     color: Colors.black38,
            //     fontSize: 15,
            //     fontWeight: FontWeight.w700,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
