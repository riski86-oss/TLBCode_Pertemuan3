import 'package:aplikasi_dasar/listview/listview_builder_page.dart';
import 'package:aplikasi_dasar/listview/listview_default_page.dart';
import 'package:aplikasi_dasar/listview/listview_separated_page.dart';
import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {
  const ListviewPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ListViewDefaultPage()
                ));
              },
              child: Text("Listview Default"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ListViewBuilderPage()
                ));
              },
              child: Text("Listview Builder"),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ListViewSeparatedPage()
                ));
              },
              child: Text("Listview Separated"),
            ),
          ],
        )
      ),
    );
  }
}