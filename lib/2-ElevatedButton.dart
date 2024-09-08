import 'package:flutter/material.dart';

class ElevatedButtonOne extends StatefulWidget {
  const ElevatedButtonOne({super.key});

  @override
  State<ElevatedButtonOne> createState() => _ElevatedButtonOneState();
}

class _ElevatedButtonOneState extends State<ElevatedButtonOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ElevatedButton"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed:(){

          },child: Text("ElevatedButton"),),
          SizedBox(height: 100,),

          ElevatedButton.icon(
            onPressed: (){}, 
            icon: Icon(Icons.import_contacts_sharp), 
            label: Text("ElevatedButton.icon"))
        ],
      ),
    );
  }
}