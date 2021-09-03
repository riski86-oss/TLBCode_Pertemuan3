import 'package:flutter/material.dart';

class ResponsiveLayoutPage extends StatelessWidget {
  const ResponsiveLayoutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Layout"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints){
          if(constraints.maxWidth > 600){
            return _buildWideContainers();
          }else{
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer(){
    return Center(
      child: Container(
        height: 200.0,
        width: 200.00,
        color: Colors.red
      ),
    );
  }

  Widget _buildWideContainers(){
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.green,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.blue,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.amber,
          )
        ],
      ),
    );
  }
}