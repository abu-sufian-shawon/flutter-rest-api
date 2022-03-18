class PostsResponse {
  List<Post> posts;

  PostsResponse({required this.posts});

  factory PostsResponse.fromJSON(Map<String, dynamic> jsonMap){
    return PostsResponse(posts: jsonMap['posts']);
  }
}

class Post {
  int userId;
  int id;
  String title;
  String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJSON(Map<String, dynamic> jsonMap) {
    return Post(
        userId: jsonMap['userId'],
        id: jsonMap['id'],
        title: jsonMap['title'],
        body: jsonMap['body']);
  }
}
