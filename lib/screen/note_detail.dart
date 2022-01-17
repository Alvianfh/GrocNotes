import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes/db/notesdb.dart';
import 'package:notes/model/note.dart';
import 'package:notes/screen/add_note.dart';

class NoteDetail extends StatefulWidget {
  final int noteId;
 
  const NoteDetail({Key? key, required this.noteId,}) : super(key: key);


  @override
  _NoteDetailState createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {
  late Note note;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    refreshNotes();
  }


  Future refreshNotes() async {
    setState(() => isLoading = true);

    this.note = await NotesDatabase.instance.readNote(widget.noteId);

    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [editButton(), deleteButton()],
        ),
        body: isLoading
            ? Center(child: CircularProgressIndicator())
            : Padding(
                padding: EdgeInsets.all(12),
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  children: [
                    Text(
                      note.title,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      DateFormat.yMMMd().format(note.createdTime),
                      style: TextStyle(color: Colors.black54),
                    ),
                    SizedBox(height: 8),
                    Text(
                      note.description,
                      style: TextStyle(color: Colors.black54, fontSize: 18),
                    )
                  ],
                ),
              ),
      );
    
    Widget editButton() => IconButton(
    icon: Icon(Icons.edit_outlined),
    onPressed: () async {
      if (isLoading) return;

      await Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => add_note(note: note),
      ));

        refreshNotes();
      });

  Widget deleteButton() => IconButton(
        icon: Icon(Icons.delete),
        onPressed: () async {
          await NotesDatabase.instance.delete(widget.noteId);

          Navigator.of(context).pop();
        },
      );
}