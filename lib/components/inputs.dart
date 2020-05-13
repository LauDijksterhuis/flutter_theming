import 'package:flutter/material.dart';
import 'package:flutter_theming/pages/stylepage.dart';

class AppThemeInputs extends StatefulWidget {
  final ThemeData themeData;
  AppThemeInputs({@required this.themeData});

  @override
  _AppThemeInputsState createState() => _AppThemeInputsState();
}

class _AppThemeInputsState extends State<AppThemeInputs> {
  bool checkbox1 = false;
  bool checkbox2 = true;
  bool checkbox3 = false;
  bool checkbox4 = true;

  bool switch1 = false;
  bool switch2 = true;
  bool switch3 = false;
  bool switch4 = true;

  String dropdownValue = 'One';

  SingingCharacter _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Checkbox(
                  value: checkbox1,
                  onChanged: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Checkbox(
                  value: checkbox2,
                  onChanged: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Checkbox(
                  value: checkbox3,
                  onChanged: (value) {
                    setState(() {
                      checkbox3 = !checkbox3;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Checkbox(
                  value: checkbox4,
                  onChanged: (value) {
                    setState(() {
                      checkbox4 = !checkbox4;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Switch(
                  value: switch1,
                  onChanged: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Switch(
                  value: switch2,
                  onChanged: null,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Switch(
                  value: switch3,
                  onChanged: (value) {
                    setState(() {
                      switch3 = !switch3;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Switch(
                  value: switch4,
                  onChanged: (value) {
                    setState(() {
                      switch4 = !switch4;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: SizedBox(
                  width: 200,
                  child: DropdownButton(
                    dropdownColor: widget.themeData.cardTheme.color,
                    value: dropdownValue,
                    iconSize: 24,
                    elevation: 16,
                    style: Theme.of(context).textTheme.button,
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['One', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
        Divider(),
        Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: const Text('Lafayette'),
                leading: Radio(
                  value: SingingCharacter.lafayette,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: ListTile(
                title: const Text('Thomas Jefferson'),
                leading: Radio(
                  value: SingingCharacter.jefferson,
                  groupValue: _character,
                  onChanged: (SingingCharacter value) {
                    setState(() {
                      _character = value;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            InputChip(
              label: Text('InputChips'),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:30),
                child: TextField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal:30),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(), 
                    labelText: 'Password',
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: DataTable(
            columns: const <DataColumn>[
              DataColumn(
                label: Text(
                  'Name',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Age',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              DataColumn(
                label: Text(
                  'Role',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ],
            rows: const <DataRow>[
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Sarah')),
                  DataCell(Text('19')),
                  DataCell(Text('Student')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('Janine')),
                  DataCell(Text('43')),
                  DataCell(Text('Professor')),
                ],
              ),
              DataRow(
                cells: <DataCell>[
                  DataCell(Text('William')),
                  DataCell(Text('27')),
                  DataCell(Text('Associate Professor')),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
