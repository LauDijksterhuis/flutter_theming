import 'package:flutter/material.dart';
import 'package:flutter_theming/pages/stylepage.dart';
import 'package:flutter_theming/theme/apptheme.dart';

void main() {
  runApp(ThemingApp());
}

class ThemingApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theming',
      home: Row(
        children: <Widget>[
          Expanded(
            child: StylePage(
              title: 'Theming Light',
              themeData: AppTheme.light,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: StylePage(
              title: 'Theming Dark',
              themeData: AppTheme.dark,
            ),
          ),
        ],
      ),
    );
  }
}
