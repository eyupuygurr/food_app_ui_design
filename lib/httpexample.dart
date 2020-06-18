
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

/*
class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Note> _notes = List<Note>();

  Future<List<Note>> fetchNotes() async {
    var url = 'http://www.json-generator.com/api/json/get/cqvHFKFfPC?indent=2';
    var response = await http.get(url);
    
    var notes = List<Note>();
    
    if (response.statusCode == 200) {
      var notesJson = json.decode(response.body);
      for (var noteJson in notesJson) {
        notes.add(Note.fromJson(noteJson));
      }
    }
    return notes;
  }

  @override
  void initState() {
    fetchNotes().then((value) {
      setState(() {
        _notes.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter listview with json'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    _notes[index].title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                    _notes[index].text,
                    style: TextStyle(
                      color: Colors.grey.shade600
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: _notes.length,
      )
    );
  }
}

  
class Note {
  String title;
  String text;
  
  Note(this.title, this.text);

  Note.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    text = json['text'];
  }
}
*/