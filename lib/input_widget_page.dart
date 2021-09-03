import 'package:flutter/material.dart';

class InputWidgetPage extends StatefulWidget {
  const InputWidgetPage({ Key? key }) : super(key: key);

  @override
  _InputWidgetPageState createState() => _InputWidgetPageState();
}

class _InputWidgetPageState extends State<InputWidgetPage> {
  String dropdownValue = "Satu";
  bool checkboxPertama = false;
  bool checkboxKedua = true;

  Answer _answer = Answer.benar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text("Input Widget")
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Text Field"),
            SizedBox(height: 10),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                label: const Text("Username"),
                hintText: "Ketikkan sesuatu"
              ),
            ),
            const SizedBox(height: 10),
            const Text("Dropdown"),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_drop_down),
              onChanged:(String? value){
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: <String>['Satu', 'Dua', 'Tiga', 'Empat'].map<DropdownMenuItem<String>>((String value){
                return DropdownMenuItem<String>(
                  child: Text(value),
                  value: value
                );
              }).toList(),
            ),
            const SizedBox(height: 10),
            const Text("Checkbox"),
            Checkbox(
              value: checkboxPertama,
              onChanged: (value){
                setState(() {
                  checkboxPertama = value!;
                });
            }),
            Checkbox(
            value: checkboxKedua,
            onChanged: (value){
              setState(() {
                checkboxKedua = value!;
              });
            }),
            const SizedBox(height: 10),
            const Text("Radio Button"),
            Column(
              children: [
                ListTile(
                  title: const Text("Benar"),
                  leading: Radio(
                    value: Answer.benar,
                    groupValue: _answer,
                    onChanged: (Answer? value){
                      setState(() {
                        _answer = value!;
                      });
                    },
                  )
                  
                ),
                ListTile(
                  title: const Text("Salah"),
                  leading: Radio(
                    value: Answer.salah,
                    groupValue: _answer,
                    onChanged: (Answer? value){
                      setState(() {
                        _answer = value!;
                      });
                    },
                  )
                  
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

enum Answer{benar, salah}