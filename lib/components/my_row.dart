import 'package:flutter/material.dart';
import 'my_card.dart';

Row my_row(IconData myicon1, String mytext1,IconData myicon2, String mytext2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      my_card(myicon1, mytext1),
      my_card(myicon2, mytext2),
    ],
  );
}
