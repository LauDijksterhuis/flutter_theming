import 'package:flutter/material.dart';

class AppThemeButtons extends StatelessWidget {
  final ThemeData themeData;
  AppThemeButtons({@required this.themeData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: FlatButton(
                  child: Text('FlatButton Disabled'.toUpperCase()),
                  onPressed: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                  child: Text(
                    'FlatButton Active'.toUpperCase(),
                    style: themeData.textTheme.button,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: themeData.dividerColor,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: OutlineButton(
                  child: Text('Outlinebutton Disabled'.toUpperCase()),
                  onPressed: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: OutlineButton(
                  child: Text(
                    'Outlinebutton Active'.toUpperCase(),
                    style: themeData.textTheme.button,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: themeData.dividerColor,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: RaisedButton(
                  child: Text('Raisedbutton Disabled'.toUpperCase()),
                  onPressed: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: RaisedButton(
                  child: Text(
                    'Raisedbutton Active'.toUpperCase(),
                    style: themeData.textTheme.button,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: themeData.dividerColor,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: FlatButton.icon(
                  icon: Icon(Icons.notifications_off),
                  label: Text('Flat iconbutton'.toUpperCase()),
                  onPressed: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FlatButton.icon(
                  icon: Icon(Icons.notifications_active),
                  label: Text(
                    'Flat iconbutton'.toUpperCase(),
                    style: themeData.textTheme.button,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: themeData.dividerColor,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
        Divider(
          color: themeData.dividerColor,
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FloatingActionButton.extended(
                  icon: Icon(Icons.add),
                  label: Text(
                    'extended'.toUpperCase(),
                    style: themeData.textTheme.button,
                  ),
                  onPressed: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: () {},
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: FloatingActionButton.extended(
                  icon: Icon(Icons.add),
                  label: Text(
                    'extended'.toUpperCase(),
                    style: themeData.textTheme.button,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
