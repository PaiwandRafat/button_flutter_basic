import 'package:flutter/material.dart';

class IconButtonOne extends StatefulWidget {
  const IconButtonOne({super.key});

  @override
  State<IconButtonOne> createState() => _IconButtonOneState();
}

class _IconButtonOneState extends State<IconButtonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IconButton"),),
      body: Column(
        children: [
          IconButton(
          icon:const Icon(Icons.thumb_up),
          onPressed: () {
            print('IconButton pressed');
          },
        ),

        ],
      ),
    );
  }
}