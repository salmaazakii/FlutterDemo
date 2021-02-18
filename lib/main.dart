import 'views/posts/postsHome.dart';
import 'package:flutter/material.dart';
import 'views/images/imageCards.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Demo Home'),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
        backgroundColor: Colors.indigo[200],
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: <Widget>[
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      RaisedButton(
                        onPressed: ()=> {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyImageCards()),
                          )
                        },
                        color: Colors.indigo[200],
                        padding: EdgeInsets.only(left: 40.0,right:40.0),
                        child: Text('Open Images',style: TextStyle(color: Colors.white)),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      RaisedButton(
                        onPressed: ()=> {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => PostsHome()),
                          )
                        },
                        color: Colors.indigo[200],
                        padding: EdgeInsets.only(left: 44.0,right:44.0),
                        child: Text('Open Posts',style: TextStyle(color: Colors.white)),
                      ),
                      Padding(padding: EdgeInsets.all(20.0)),
                      Text('Need an account? Register',style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(padding: EdgeInsets.all(14.0)),
                      Text('Forget Password?',style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
