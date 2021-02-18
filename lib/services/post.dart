import 'package:demoOne/models/post.dart';
import 'package:dio/dio.dart';

class PostService{

  String URL = 'https://jsonplaceholder.typicode.com/posts';

  Future <List<Post>> getPosts() async {
    
    List<Post> posts = new List();
    Response response;
    Dio dio = new Dio();

    response = await dio.get(URL);
    var data = response.data;
    for(var i=0;i< data.length;i++){
      posts.add(Post.fromJson(data[i]));
    }
    return posts;
  }
}