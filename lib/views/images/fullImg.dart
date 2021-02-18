import 'package:flutter/material.dart';

class FullImage extends StatelessWidget {
  String imgSrc;
  FullImage({this.imgSrc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Details'),
        backgroundColor: Colors.red[200],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(child: Image.network(imgSrc)),
              ),
              const SizedBox(height: 16),
              Text('You can find more images similar to this image at:'),
              Text('https://picsum.photos',style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              )),
              const SizedBox(height: 16),
              RaisedButton(
                onPressed: ()=> {
                  Navigator.popUntil(
                    context,(route) => route.isFirst
                  )
                },
                color: Colors.red[200],
                padding: EdgeInsets.only(left: 44.0,right:44.0),
                child: Text('Go back to Home',style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}