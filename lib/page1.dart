import 'package:flutter/material.dart';
import 'package:flutter_hello/ImageNet.dart';
class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('page2')
        ),
        body: Center(
            child: MaterialButton(
              child: Text("back"),
              color: Colors.red,
              onPressed: (){
                print("back");
//                Navigator.pop(context) ;
              Navigator.push(context, new MaterialPageRoute(builder: (context) => ImageNet()));
              },
            ),
        )
    );
  }
}