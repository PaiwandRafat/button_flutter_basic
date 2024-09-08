import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RadioOne extends StatefulWidget {
  const RadioOne({super.key});

  @override
  State<RadioOne> createState() => _RadioOneState();
}

class _RadioOneState extends State<RadioOne> {
   String country="";
   String iraq="";
   String? _selectedCountry;
   String? kalar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          
          children: [
            Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                border: Border.all(width: 10)
              ),
              child: Column(
                children: [
                  Row(
                children: [
                const  Text("kalar"),
                  Radio(value: "kalar", groupValue: kalar, onChanged: (val){
                    setState(() {
                      kalar=val as String;
                    });
                  })
                ],
              ),
            const  SizedBox(height: 100,),
               Row(
                children: [
                 const Text("karkuk"),
                  Radio(value: "karkuk", groupValue: kalar, onChanged: (val){
                    setState(() {
                      kalar=val as String;
                    });
                  })
                ],
              ),
                ],
              )
            ),
                   
                   Row(
                    children: [
                      Text("USA"),
                  Radio(value: "usa", groupValue: country, onChanged: (val){
                setState(() {
                  country=val as String;
                  print(country);
                });
              })
                    ],
                   ),
                
         Text("#########################"),
         
        //#########################
       RadioListTile<String>(
            selected: _selectedCountry == 'iraq',
            title: const Text("Iraq"),
            value: "iraq",
            groupValue: _selectedCountry,
            onChanged: (val) {
              setState(() {
                _selectedCountry = val;
                print(_selectedCountry);
              });
            },
          ),
          RadioListTile<String>(
            selected: _selectedCountry == 'usa',
            title: const Text("USA"),
            value: "usa",
            groupValue: _selectedCountry,
            onChanged: (val) {
              setState(() {
                _selectedCountry = val;
                print(_selectedCountry);
              });
            },
          ),
          RadioListTile<String>(
            selected: _selectedCountry == 'canada',
            title: const Text("Canada"),
            value: "canada",
            groupValue: _selectedCountry,
            onChanged: (val) {
              setState(() {
                _selectedCountry = val;
                print(_selectedCountry);
              });
            },
          ), 
          ],
        ),
      ),
    );
  }
}