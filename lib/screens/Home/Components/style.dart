import 'package:flutter/material.dart';

TextStyle drawerButtonTextStyle() => TextStyle(
      color: Colors.grey.shade500,
      fontSize: 18,
    );
ButtonStyle drawerButtonStyle() => ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Colors.orange.shade200),
      minimumSize: MaterialStateProperty.all(const Size(300, 50)),
      elevation: MaterialStateProperty.all(0.5),
      shape: MaterialStateProperty.all(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    );
