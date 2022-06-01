import 'package:get/get.dart';
import 'package:project_getex/models/post.model.dart';
import 'package:project_getex/models/user.model.dart';

const baseUrl = 'https://jsonplaceholder.typicode.com/posts';
const baseUrl2 = 'https://jsonplaceholder.typicode.com/users';

class PostsConnectProvider extends GetConnect {
  Future<List<Post>?> getPosts() async {
    List<Post> postList = <Post>[];
    final response = await get(baseUrl, decoder: (body) {
      postList = Post.fromJson(body) as List<Post>;
      return postList.toList();
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Posts');
    }
    return postList.toList();
  }

  Future<List<UserModel>?> getUser() async {
    List<UserModel> postList = <UserModel>[];
    final response = await get(baseUrl2, decoder: (body) {
      postList = Post.fromJson(body) as List<UserModel>;
      return postList;
    });
    if (response.hasError) {
      throw Exception('Erro ao buscar Posts');
    }
    return postList;
  }
}
