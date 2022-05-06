import 'package:flutter/material.dart';

commonTextBox(
    {required ticon, required htext, required controller, required ktype}) {
  return Container(
    width: 320,
    height: 60,
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 227, 225, 225),
        borderRadius: BorderRadius.circular(30)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: const Color.fromARGB(255, 139, 9, 204),
            child: Icon(
              ticon,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SizedBox(
              width: 210,
              height: 60,
              child: TextField(
                keyboardType: ktype,
                controller: controller,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  hintText: htext,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
