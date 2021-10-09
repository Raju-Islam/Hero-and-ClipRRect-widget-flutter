import 'package:flutter/material.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.all(10),
          child: Hero(
            tag: "tag",
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color: Colors.blue
              ),
              
            ),
          ),
          )
        ],
      ),
    );
  }
}