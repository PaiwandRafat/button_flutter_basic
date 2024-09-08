import 'package:flutter/material.dart';

class CheckboxListTileExample extends StatefulWidget {
  const CheckboxListTileExample({super.key});

  @override
  _CheckboxListTileExampleState createState() => _CheckboxListTileExampleState();
}

class _CheckboxListTileExampleState extends State<CheckboxListTileExample> {
  late List<bool> _selections;

  @override
  void initState() {
    super.initState();
    _selections = List<bool>.generate(10, (index) => false);
  }

  void _toggleAll(bool value) {
    setState(() {
      _selections = List<bool>.filled(_selections.length, value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckboxListTile Example'),
        actions: [
          IconButton(
            icon: Icon(Icons.select_all),
            onPressed: () {
              bool allSelected = _selections.every((selected) => selected);
              _toggleAll(!allSelected);
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _selections.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text('Item $index'),
            value: _selections[index],
            onChanged: ( value) {
              setState(() {
                _selections[index] = value as bool;
              });
            },
          );
        },
      ),
    );
  }
}