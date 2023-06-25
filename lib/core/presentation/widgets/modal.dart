import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class Modal extends StatelessWidget {
  final String title;
  final Widget content;

  static Future<void> show(
    BuildContext context, {
    required String title,
    required Widget content,
  }) {
    return showDialog(
      context: context,
      builder: (_) {
        return Modal(
          title: title,
          content: content,
        );
      },
    );
  }

  const Modal({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: content,
      scrollable: true,
      actions: <Widget>[
        TextButton(
          child: const Text('Close'),
          onPressed: () => context.router.pop(),
        ),
      ],
    );
  }
}
