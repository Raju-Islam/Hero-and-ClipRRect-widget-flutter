import 'package:flutter/material.dart';
import 'package:hero_cliprrect_widget/page/second_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Hero and ClipRRect Widget"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Hero and ClipRRect Widget",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Hero(
                tag: "tag",
                child: Container(
                  height: 300,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      gradient:
                          LinearGradient(colors: [Colors.red, Colors.blueAccent])),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                
                minimumSize: Size(250, 50)
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ));
              },
              child: Text("Go "),
            ),
          )
        ],
      ),
    );
  }
}
