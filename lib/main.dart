import 'package:flutter/material.dart';
import 'package:patterns_codelab/data.dart';
import 'package:patterns_codelab/screens/document_screen.dart';

void main() => runApp(const MainApp());

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
