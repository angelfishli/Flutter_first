import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Login extends StatefulWidget{
  @override
  _LoginState createState() => new _LoginState() ;



}
class _LoginState extends State<Login>{
  Dio dio = new Dio() ;
  String userName='' ;
  String password ='' ;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20
            ),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: ('userName')
              ),
              onChanged: (value){
                setState(() {
                   userName = value ;
                });
              },
            )
          ),
          Container(
            padding: EdgeInsets.all(20),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: ('password')
                ),
                obscureText: true,
                onChanged: (value){
                  setState(() {
                     password = value ;
                  });
                },
              )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(
                  left: 10,
                  right: 10
                ),
                child: RaisedButton(
                  child: Text('Login'),
                  color: Colors.blue,
                  onPressed: () async {
                    String tip ='';
                    if(userName ==''){
                      tip ='userNameEmpty' ;
                    }else if (password ==''){
                      tip = 'passwordEmpty' ;
                    }else{
                      //网络请求
                      try{
                        Response res = await dio.post('',
                            data: {
                              'username':userName,
                              'password':password
                            });
                        print(res.data) ;
                        tip =res.data ;
                      }catch(e){
                        print(e) ;
                        tip = 'failed' ;
                      }


//                      setState(() {
//                        userName ='' ;
//                        password ='' ;
//                      });
                      tip='success' ;
                    }
                    Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text(tip),
                      duration: Duration(seconds:1),
                    ));
                    print("login:--tip:"+tip);
                  }
                )
              ),
              Container(
                  margin: EdgeInsets.only(
                      left: 10,
                      right: 10
                  ),
                  child: RaisedButton(
                      child: Text('Cancel'),
                      color: Colors.cyan,
                      onPressed: (){
                        setState(() {
                          userName='' ;
                          password='' ;
                        });
                        print("Cancel");
                        Navigator.pop(context);
                      }
                  )
              )
            ],
          )
        ],
      ),
    );
  }

}