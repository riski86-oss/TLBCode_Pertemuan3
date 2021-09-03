import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  ListViewBuilderPage({ Key? key }) : super(key: key);

  final List<String> data = <String>['A','B', 'C', 'D', 'E', 'F', 'G', 'H', 'I'];
  final List<Color?> color = <Color?>[
    Colors.amber[900], Colors.amber[800], Colors.amber[700],
    Colors.amber[600], Colors.amber, Colors.amber[400],
    Colors.amber[300], Colors.amber[200], Colors.amber[100]];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Builder"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return Container(
              height: 100,
              width: 100,
              color: color[index],
              child: Center(child: Text("List View ${data[index]}")),
            );
          },
          itemCount: data.length
        ),
      )
    );
  }
}