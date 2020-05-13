import 'package:flutter/material.dart';

class AppThemeFonts extends StatelessWidget {
  final ThemeData themeData;
  AppThemeFonts({@required this.themeData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Headline 1',
          style: themeData.textTheme.headline1,
        ),
        Text(
          'Headline 2',
          style: themeData.textTheme.headline2,
        ),
        Text(
          'Headline 3',
          style: themeData.textTheme.headline3,
        ),
        Text(
          'Headline 4',
          style: themeData.textTheme.headline4,
        ),
        Text(
          'Headline 5',
          style: themeData.textTheme.headline5,
        ),
        Text(
          'Headline 6',
          style: themeData.textTheme.headline6,
        ),
        Divider(
          color: themeData.dividerColor,
        ),
        Text(
          'Subtitle 1',
          style: themeData.textTheme.subtitle1,
        ),
        Text(
          'Subtitle 2',
          style: themeData.textTheme.subtitle2,
        ),
        Divider(
          color: themeData.dividerColor,
        ),
        Text(
          'Body text 1',
          style: themeData.textTheme.bodyText1,
        ),
        Text(
          'Body text 2',
          style: themeData.textTheme.bodyText2,
        ),
        Divider(
          color: themeData.dividerColor,
        ),
        Text(
          'Button',
          style: themeData.textTheme.button,
        ),
        Text(
          'Caption',
          style: themeData.textTheme.caption,
        ),
        Text(
          'Overline',
          style: themeData.textTheme.overline,
        ),
      ],
    );
  }
}
