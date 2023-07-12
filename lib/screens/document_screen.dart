import 'package:flutter/material.dart';
import 'package:patterns_codelab/data.dart';

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    super.key,
    required this.document,
  });

  @override
  Widget build(BuildContext context) {
    final (title, :modified) = document.metadata;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Last modified $modified',
            ),
          )
        ],
      ),
    );
  }
}
