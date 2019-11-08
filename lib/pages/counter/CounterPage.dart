import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutterapisample/providers/Counter.dart';

class CounterPage extends StatelessWidget {
  CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      builder: (context) => Counter(),
      child: CounterPageBody(),
    );
  }
}

class CounterPageBody extends StatelessWidget {
  const CounterPageBody({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text('${counter.count}', style: Theme.of(context).textTheme.title),
            RaisedButton(
              child: Text("+", style: TextStyle(fontSize: 30.0)),
              onPressed: () {
                counter.increment();
              },
            ),
            RaisedButton(
              child: Text("-", style: TextStyle(fontSize: 30.0)),
              onPressed: () {
                counter.decrement();
              },
            )
          ],
        ),
      ),
    );
  }
}
