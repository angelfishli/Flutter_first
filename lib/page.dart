import 'package:flutter/material.dart';
import 'package:flutter_hello/page1.dart';
class page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('page1')
        ),
        body: Center(
            child: Text(
                '我是一段文本',
                style: TextStyle(
                    color: Color.fromARGB(0xFF, 0xFF, 0x11, 0xF5)
                )
            )
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("next page");
          Navigator.push(context, new MaterialPageRoute(builder: (context) => page1()));
        },
          child: Image.asset('./images/floatIcon.png'),
    ),
    );
  }
}