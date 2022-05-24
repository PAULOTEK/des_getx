

import 'package:project_getex/controller/service/posts_provider.dart';

class PostRepository{
  final PostsConnectProvider connectApi;

  PostRepository(this.connectApi);

  // ignore: non_constant_identifier_names
  GetPosts(){
    return connectApi.getPosts(null);
  }
  // ignore: non_constant_identifier_names
  GetUser(){
    return connectApi.getUser();
  }

}
