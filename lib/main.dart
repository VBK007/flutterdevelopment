
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mk/calculator.dart';
import 'package:mk/secoundactvity.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My First App',
      theme: ThemeData(

        primarySwatch: Colors.green,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  void _incrementCounter() {
    Navigator.push(context, MaterialPageRoute(builder: (context)=>calculator()),);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Container(

        child: Column(
          children: <Widget>[
          new Image.asset('assets/Images/des.jpg',
            width: 150.0,
            height: 150.0,
            fit: BoxFit.cover,
          ),

        Padding(padding: EdgeInsets.all(15),child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),hintText: 'Enter Email',)),),
            Padding(padding: EdgeInsets.all(15),child: TextField(decoration: InputDecoration(border:OutlineInputBorder(),hintText: 'Enter Password',)),),
            CupertinoButton(onPressed: _incrementCounter, child: Text('Login',style: TextStyle(fontSize: 33.0),
            ),color: Colors.blue,
            )



          ],

        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
