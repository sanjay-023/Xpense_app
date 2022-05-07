import 'package:flutter/material.dart';

class SettingWidget extends StatelessWidget {
  SettingWidget({Key? key, required this.stext, required this.sicon})
      : super(key: key);
  String stext;
  IconData sicon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        sicon,
        color: Colors.black,
        size: 26,
      ),
      title: Text(
        stext,
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
