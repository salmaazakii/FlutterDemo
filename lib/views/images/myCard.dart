import 'package:flutter/material.dart';

import 'fullImg.dart';

class MyCard extends StatefulWidget {
  String imgSrc;
  MyCard({this.imgSrc});
  @override
  _MyCardState createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              onTap: ()=>{
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FullImage(imgSrc : widget.imgSrc),
                ))
              },
              child: Container(
                width: 200,
                height: 200,
                child: Image.network(widget.imgSrc)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                TextButton(
                  child: Row(children: [
                    Icon(Icons.thumb_up,color: Colors.black26),
                    Padding(padding: EdgeInsets.only(right: 6.0)),
                    Text('Like',style: TextStyle(color: Colors.black26)),
                  ],),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
                TextButton(
                  child: Row(children: [
                    Icon(Icons.comment_rounded, color: Colors.black26),
                    Padding(padding: EdgeInsets.only(right: 6.0)),
                    Text('Comment',style: TextStyle(color: Colors.black26)),
                  ],),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],),
          ],
        ),
      ),
      
    );
  }
}