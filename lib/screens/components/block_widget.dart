import 'package:flutter/material.dart';
import 'package:patterns_codelab/data.dart';

class BlockWidget extends StatelessWidget {
  final Block block;

  const BlockWidget({
    super.key,
    required this.block,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle? textStyle;
    textStyle = switch (block.type) {
      'h1' => Theme.of(context).textTheme.displayMedium,
      'p' || 'checkbox' => Theme.of(context).textTheme.bodyMedium,
      _ => Theme.of(context).textTheme.bodySmall
    };

    return Container(
      margin: const EdgeInsets.all(8),
      child: Text(
        block.text,
        style: textStyle,
      ),
    );
  }
}
