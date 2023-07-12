import 'package:flutter/material.dart';
import 'package:patterns_codelab/data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DocumentScreen(
        document: Document(),
      ),
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}

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
