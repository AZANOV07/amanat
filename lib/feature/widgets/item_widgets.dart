import 'package:flutter/material.dart';

import 'color_widgets.dart';

Widget MenuItem(IconData icon, String label, Color color) {
  return Card(
    child: ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          borderRadius:
          BorderRadius.circular(8.0),
        ),
        child: Icon(icon, color: color10,),
      ),
      title: Text(label),
    ),
  );
}