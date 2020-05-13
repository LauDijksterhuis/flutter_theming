import 'package:flutter/material.dart';

class AppThemeCards extends StatelessWidget {
  final ThemeData themeData;
  AppThemeCards({@required this.themeData});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 100,
            child: Card(
              color: themeData.cardTheme.color,
              child: Center(
                child: Text('Theme', style: themeData.textTheme.bodyText1,),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 100,
            child: Card(
              color: themeData.cardTheme.color,
              elevation: 4,
              child: Center(
                child: Text('4.0', style: themeData.textTheme.bodyText1,),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 100,
            child: Card(
              color: themeData.cardTheme.color,
              elevation: 8,
              child: Center(
                child: Text('8.0', style: themeData.textTheme.bodyText1,),
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 100,
            child: Card(
              color: themeData.cardTheme.color,
              elevation: 12,
              child: Center(
                child: Text('12.0', style: themeData.textTheme.bodyText1,),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
