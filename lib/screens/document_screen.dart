import 'package:flutter/material.dart';
import 'package:patterns_codelab/data.dart';
import 'package:patterns_codelab/screens/components/block_widget.dart';
import 'package:patterns_codelab/util.dart';

class DocumentScreen extends StatelessWidget {
  final Document document;

  const DocumentScreen({
    super.key,
    required this.document,
  });

  @override
  Widget build(BuildContext context) {
    final (title, :modified) = document.metadata;
    final blocks = document.getBlocks();

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: [
          Text('Last modified ${formatDate(modified)}'),
          Expanded(
            child: ListView.builder(
              itemCount: blocks.length,
              itemBuilder: (_, index) => BlockWidget(block: blocks[index]),
            ),
          )
        ],
      ),
    );
  }
}
