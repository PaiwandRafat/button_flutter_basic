      import 'package:flutter/material.dart';

      class AlerDaialogOne extends StatefulWidget {
        const AlerDaialogOne({super.key});

        @override
        State<AlerDaialogOne> createState() => _AlerDaialogOneState();
      }

      class _AlerDaialogOneState extends State<AlerDaialogOne> {
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            appBar: AppBar(title: Text("data"),),
            body: Center(
              child: Column(
                children: [
                  ElevatedButton(onPressed: (){
                    showDialog(context: context, builder: (builder){
                      return  AlertDialog(
                        title:const Text('Alert Dialog Title'),
                        content:const SingleChildScrollView(
                          child: ListBody(
                            children: <Widget>[
                              Text('This is a demo alert dialog.'),
                              Text('Would you like to approve of this message?'),
                            ],
                          ),
                        ),
                         actions: <Widget>[
                          TextButton(
                            child:const Text('Cancel'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                          TextButton(
                            child:const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
                  }, child: Text("Show Alert Dialog"))
                ],
              ),
            ),
          );
        }
      }