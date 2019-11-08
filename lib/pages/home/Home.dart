import 'package:flutter/material.dart';
import 'package:flutterapisample/pages/counter/CounterPage.dart';
import 'package:flutterapisample/pages/user/UserListPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          RaisedButton(
            child: Text('Counter Page'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CounterPage()));
            },
          ),
          RaisedButton(
            child: Text('Users Page'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserListPage()));
            },
          ),
        ],
      ),
    );
  }
}
