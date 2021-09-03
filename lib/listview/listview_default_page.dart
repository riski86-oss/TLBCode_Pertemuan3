import 'package:flutter/material.dart';

class ListViewDefaultPage extends StatelessWidget {
  const ListViewDefaultPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Default"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber[900],
              child: const Center(child: Text("List View A")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber[800],
              child: const Center(child: Text("List View B")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber[700],
              child: const Center(child: Text("List View C")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber[600],
              child: const Center(child: Text("List View D")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
              child: const Center(child: Text("List View E")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber[400],
              child: const Center(child: Text("List View F")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber[300],
              child: const Center(child: Text("List View G")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber[200],
              child: const Center(child: Text("List View H")),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.amber[100],
              child: const Center(child: Text("List View I")),
            )
          ],
        ),
      ),
    );
  }
}