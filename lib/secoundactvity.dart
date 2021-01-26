import 'package:flutter/material.dart';
void main() {
  runApp(secoundactivity());
}

class secoundactivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MySecoud Page',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: mysecoundactivityclass(title: 'MySecoud Page'),
    );
  }


}


class mysecoundactivityclass extends StatefulWidget
{
  mysecoundactivityclass({Key key, this.title}):super(key: key);

 final String title;

  @override
_MySecounHomePage   createState() => _MySecounHomePage();
}

class _MySecounHomePage extends State<mysecoundactivityclass>{


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),

      ),
      body:Container(
        child: Row(
          children: <Widget>[
            Text('Hi from Secound activity')

          ],

        ),

      ),

    );


  }



}


