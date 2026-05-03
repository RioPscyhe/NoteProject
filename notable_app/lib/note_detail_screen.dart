import 'package:flutter/material.dart';
import 'models/note.dart';

class NoteDetailScreen extends StatelessWidget {
  final Note note;

  const NoteDetailScreen({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          note.content,
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'ComicNeue',
          ),
        ),
      ),
    );
  }
}