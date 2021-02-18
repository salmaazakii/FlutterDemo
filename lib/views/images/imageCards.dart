import 'package:demoOne/views/images/myCard.dart';
import 'package:flutter/material.dart';

class MyImageCards extends StatefulWidget {
  List<String> imagesList = [
    'https://picsum.photos/250?image=9',
    'https://picsum.photos/250?image=10',
    'https://picsum.photos/250?image=11',
    'https://picsum.photos/250?image=12',
    'https://picsum.photos/250?image=13',
    'https://picsum.photos/250?image=14'
  ];

  @override
  _MyImageCardsState createState() => _MyImageCardsState();
}

class _MyImageCardsState extends State<MyImageCards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('My First App'),
        backgroundColor: Colors.red[200],
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: widget.imagesList.length,
          itemBuilder: (context,index){
            return MyCard(imgSrc: widget.imagesList[index]);
          },
    ),
      )
    );
  }
}
