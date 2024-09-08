import 'package:flutter/material.dart';

class switchBouttonOne extends StatefulWidget {
  const switchBouttonOne({super.key});

  @override
  State<switchBouttonOne> createState() => _switchBouttonOneState();
}

class _switchBouttonOneState extends State<switchBouttonOne> {
  bool isSwitch=false;
  bool _isSwitch=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
              appBar: AppBar(),
              body: Column(
                children: [
                
                Switch(
                  value: isSwitch,
                  onChanged: (val){
                  setState(() {
                    isSwitch=val as bool;
                  });
                }),

                SwitchListTile(
                title: Text('Enable Feature'),
          subtitle: Text('This is a subtitle'),
          secondary: Icon(Icons.lightbulb_outline),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),

                hoverColor: Colors.amber,
                tileColor: Colors.blueAccent,
                
                selectedTileColor: Colors.blue[100],
                

                activeColor: Colors.red,
                activeTrackColor: Colors.brown,
                inactiveThumbColor: Colors.purple,
                inactiveTrackColor: Colors.yellow,
                 mouseCursor: MouseCursor.defer,

                
                

                  value: (_isSwitch), 
                  onChanged: (val){
                  setState(() {
                    _isSwitch=val as bool;
                  });
                })
              ],),
            );
  }
}