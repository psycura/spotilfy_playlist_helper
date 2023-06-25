import 'package:flutter/material.dart';

class SavePlaylistButton extends StatelessWidget {
  static const String tag = 'SavePlaylistButton';

  final Function() onPress;

  const SavePlaylistButton({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: const Text('Save'),
    );

  }
}
