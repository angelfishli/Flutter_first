import 'package:flutter/material.dart';
class ImageNet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('page3')
        ),
//        body: Center(
//         child: Image.network('https://www.baidu.com/img/bd_logo1.png'),
//        )
    body: Stack(children: <Widget>[
      Center(
        child: CircularProgressIndicator(),
      ),
      Center(
        child: Image.network('https://www.baidu.com/img/bd_logo1.png'),
      )
    ],),
    );
  }


//  body: Stack(
//  children: <Widget>[
//  Center(
//  child: CircularProgressIndicator()
//  ),
//  Center(
//  child: Image.network('https://www.baidu.com/img/bd_logo1.png')
//  ),
//  ],
//  ),
}