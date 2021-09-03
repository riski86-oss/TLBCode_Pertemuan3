import 'package:aplikasi_dasar/alert_dialog_page.dart';
import 'package:aplikasi_dasar/image_page.dart';
import 'package:aplikasi_dasar/input_widget_page.dart';
import 'package:aplikasi_dasar/listview_page.dart';
import 'package:aplikasi_dasar/responsive_layout_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar Flutter',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan Ketiga"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: const Text("Chairuman"),
              accountEmail: const Text("chairuman@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: const Icon(Icons.face, size: 60),
              )
            ),
            ListTile(
              title: const Text("List View"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => ListviewPage()
                ));
              },
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>ImagePage()
                ));
              },
              title: const Text("Image")
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>InputWidgetPage()
                ));
              },
              title: const Text("Input Widget")
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>AlertDialogPage()
                ));
              },
              title: const Text("Alert Dialog")
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) =>ResponsiveLayoutPage()
                ));
              },
              title: const Text("Responsive Layout")
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.red
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.purple
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.teal
                    ),
                  ),
                ],
              )),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.green
              )),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.amber,
              ))
          ],
        ),
      ),
    );
  }
}

