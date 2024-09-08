import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Switch_widgets extends StatefulWidget {
  const Switch_widgets({super.key});

  @override
  State<Switch_widgets> createState() => _Switch_widgetsState();
}

class _Switch_widgetsState extends State<Switch_widgets> {
  bool _isSwitched=false;
  bool isSwitched=false;
   //FocusNode _focusNode = FocusNode();
  bool _switchValue = false;
  bool _selected = false;

  @override
  // void initState() {
  //   super.initState();
  //   _focusNode.addListener(() {
  //     if (_focusNode.hasFocus) {
  //       print('SwitchListTile has focus');
  //     } else {
  //       print('SwitchListTile lost focus');
  //     }
  //   });
  // }
  // @override
  // void dispose() {
  //   _focusNode.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
            Text('Switch is ${_isSwitched ? "ON" : "OFF"}'),
        Switch(

          value: _isSwitched,
          onChanged: (value) {
            setState(() {
              _isSwitched = value;
            });
          },
        ),
         SwitchListTile(
          autofocus: true,
         // focusNode:_focusNode ,
          value: isSwitched,
           onChanged: ( value) { 
                 setState(() {
              isSwitched = value;
            });
            
          },),
         
        SwitchListTile(
          value: _switchValue,
          onChanged: (value) {
            setState(() {
              _switchValue = value;
            });
          },
          title: Text('Enable Feature'),
          subtitle: Text('This is a subtitle'),
          secondary: Icon(Icons.lightbulb_outline),
          selected: _selected,
          isThreeLine: true,
          dense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          controlAffinity: ListTileControlAffinity.leading,
          tileColor: Colors.grey[200],
          selectedTileColor: Colors.blue[100],
       //   focusColor: Colors.red[100],
          hoverColor: Colors.green[100],
          mouseCursor: MouseCursor.defer,
         // toggleColor: Colors.yellow[200],
          activeColor: Colors.green,
          autofocus: true,
          focusNode: FocusNode(),
       //   enabled: true,
          visualDensity: VisualDensity.compact,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              _selected = !_selected;
            });
          },
          child: Text('Toggle Selected'),
        ),
      ],
      ),
    );
  }
}