import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterapisample/providers/User.dart';

class UserListPage extends StatelessWidget {
  const UserListPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => User(),
      child: UserListPageBody(),
    );
  }
}

class UserListPageBody extends StatelessWidget {
  const UserListPageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<User>(context);
    userProvider.all();
    return Scaffold(
      appBar: AppBar(
        title: Text('User'),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(5.0),
        itemCount: userProvider.users.length,
        itemBuilder: (context, index) => Container(
          height: 25.0,
          child: Text(
            userProvider.users[index]['email'],
          ),
        ),
        separatorBuilder: (context, index) => Divider(),
      ),
    );
  }
}
