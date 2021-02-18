import 'package:flutter/material.dart';
import '../../models/post.dart';

class PostDetails extends StatelessWidget {
  Post post;
  PostDetails({this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Post Details'),
          backgroundColor: Colors.green[200],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(
                post.title,
                style: TextStyle(
                    color: Colors.green[800],
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 8.0,),
              Text(post.body),
              SizedBox(height: 8.0,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(child: Image.network('https://source.unsplash.com/random'))
              )
            ],
          ),
        ),
    );
  }
}
