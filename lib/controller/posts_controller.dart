import 'package:get/get.dart';
import 'package:project_getex/controller/service/api_request.dart';
import 'package:project_getex/models/post.model.dart';
import 'package:project_getex/controller/service/posts_provider.dart';
import 'package:project_getex/models/user.model.dart';

class PostsController extends GetxController {
  final repositoryPost = Get.put(
    PostRepository(
      PostsConnectProvider(),
    ),
  );
  final postsList = <Post>[].obs;
  final userList = <UserModel>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onReady() async {
    getPosts();
    getUser();
    super.onReady();
  }

  void getPosts() {
    isLoading(true);
    repositoryPost.GetPosts().then((data) {
      postsList.value = data;
      isLoading(false);
    }, onError: (e) {
      isLoading(false);
    });
  }

  void getUser() {
    isLoading(true);
    repositoryPost.GetUser().then((data) {
      userList.value = data;
      isLoading(false);
    }, onError: (e) {
      isLoading(false);
    });
  }
}
