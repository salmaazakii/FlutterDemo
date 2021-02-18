import 'package:demoOne/views/posts/postDetails.dart';
import 'package:demoOne/services/post.dart';
import 'package:flutter/material.dart';

import '../../models/post.dart';

class PostsHome extends StatefulWidget {
  @override
  _PostsHomeState createState() => _PostsHomeState();
}

class _PostsHomeState extends State<PostsHome> {
  List<Post> postList = new List();

  @override
  void initState() {
    super.initState();
    getPostsFromServer();
  }

  getPostsFromServer() async {
    postList = await PostService().getPosts();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('All Posts'),
          backgroundColor: Colors.green[200],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: postList.length,
            itemBuilder: (context, index) {
              return Card(
                child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.featured_play_list_outlined),
                            SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Text(
                                postList[index].title,
                                style: TextStyle(
                                    fontSize: 20, fontStyle: FontStyle.italic),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          PostDetails(post: postList[index]),
                                    ));
                              },
                              child: Text('read more..',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    decoration: TextDecoration.underline,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
              );
            },
          ),
        ));
  }
}
