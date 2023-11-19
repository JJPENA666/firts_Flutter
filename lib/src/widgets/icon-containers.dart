//ignore_for_file: file_names

import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  final String url;
  const IconContainer({key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 90.0,
      backgroundColor: Colors.transparent,
      backgroundImage: AssetImage(url),
    );
  }
}
