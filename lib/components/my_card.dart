import 'package:flutter/material.dart';

Card my_card(IconData myicon, String mytext) {
  return Card(
    child: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [Icon(myicon, size: 100, color: Colors.blue), Text(mytext)],
      ),
    ),
  );
}
