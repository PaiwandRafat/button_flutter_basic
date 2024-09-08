import 'package:flutter/material.dart';

class checkboxOne extends StatefulWidget {
  const checkboxOne({super.key});

  @override
  State<checkboxOne> createState() => _checkboxOneState();
}

class _checkboxOneState extends State<checkboxOne> {
  bool a=false;
  bool b=false;
  bool iraq=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           appBar: AppBar(
            title: Text("Check box"),),
           body: Column(
            children: [

              Row(
                children: [
                  Text("kalar"),
                  Checkbox(
                  activeColor: Colors.amber,
                  checkColor: Colors.brown,


                    value: a, onChanged: (val){
                          setState(() {
                            a=val as bool;
                          });
                  }),
                   Row(
                children: [
                  Text("karkuk"),
                  Checkbox(value: b, onChanged: (value){
                          setState(() {
                            b=value as bool;
                          });
                  }),

                  CheckboxListTile(
              selected: iraq,
              contentPadding: EdgeInsets.all(30),
              title: const Text("title"),
              subtitle:const Text("subtitle"),
              secondary:const Icon(Icons.flag_circle),
                         
                              value: iraq, onChanged: (val){
                              setState(() {
             iraq =val as bool;
             print("changes");
                              });
                            }),
            
             CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: const Text("title"),
              subtitle:const Text("subtitle"),
              secondary: Icon(Icons.flag_circle),
                         
             value: iraq, onChanged: (val){
             setState(() {
             iraq =val as bool;
             print("changes");
                              });
                            }),


                ],
              )
            ],
           ),
    ]));
  }
}