import 'package:flutter/material.dart';
import 'package:myapp2/main2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter(_) {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(_) {
    setState(() {
      _counter--;
    });
  }
  void _page2() {
    Navigator.push(context, MaterialPageRoute(builder:(context) =>
        MyHomePage2(
          title:"page2",
          counter: _counter,
          incrementCounter: _incrementCounter,
          decrementCounter:_decrementCounter
        )));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: ()=>_incrementCounter(null), child:Text("artı")),
                ElevatedButton(onPressed: ()=>_decrementCounter(null), child:Text("eksi"), style:ButtonStyle())
              ],
            ),
            ElevatedButton(onPressed:_page2 , child: Text("2. sayfa"))



          ],
        ),
      ),
    );
  }
}
