import 'package:flutter/material.dart';
import 'package:flutter_theming/components/buttons.dart';
import 'package:flutter_theming/components/cards.dart';
import 'package:flutter_theming/components/fonts.dart';
import 'package:flutter_theming/components/inputs.dart';

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

enum SingingCharacter { lafayette, jefferson }

class StylePage extends StatefulWidget {
  final String title;
  final ThemeData themeData;

  StylePage({@required this.title, @required this.themeData});

  @override
  _StylePageState createState() => _StylePageState();
}

class _StylePageState extends State<StylePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.themeData.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: widget.themeData.appBarTheme.color,
        title: Text(
          widget.title,
          style: widget.themeData.appBarTheme.textTheme.headline1,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: () {},
          ),
          PopupMenuButton<WhyFarther>(
            color: widget.themeData.cardTheme.color,
            onSelected: (WhyFarther result) {
              setState(() {});
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.harder,
                child: ListTile(
                  leading: Icon(Icons.gavel),
                  title: Text('Working a lot harder'),
                ),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.smarter,
                child: ListTile(
                  leading: Icon(Icons.remove_red_eye),
                  title: Text('Being a lot smarter')),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.selfStarter,
                child: ListTile(
                  leading: Icon(Icons.play_arrow),
                  title: Text('Being a self-starter')),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.tradingCharter,
                child: ListTile(
                  leading: Icon(Icons.show_chart),
                  title: Text('Placed in charge of trading charter')),
              ),
            ],
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        children: <Widget>[
          AppThemeFonts(
            themeData: widget.themeData,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: widget.themeData.dividerColor,
            ),
          ),
          AppThemeCards(
            themeData: widget.themeData,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: widget.themeData.dividerColor,
            ),
          ),
          AppThemeButtons(
            themeData: widget.themeData,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              color: widget.themeData.dividerColor,
            ),
          ),
          AppThemeInputs(
            themeData: widget.themeData,
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(color: widget.themeData.cardTheme.color),
      ),
    );
  }
}
