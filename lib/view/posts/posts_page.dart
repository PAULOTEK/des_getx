import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/posts_controller.dart';
import 'widgets/posts_list_item.dart';

class PostsPage extends StatefulWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  State<PostsPage> createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  final controller = Get.put(PostsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: Obx(
        () {
          if (controller.isLoading.value == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
            itemCount: controller.postsList.length,
            itemBuilder: (context, index) => PostsListItem(
              post: controller.postsList[index],
              user: controller.userList[index],
              adress: controller.userList[index].address!,
              company: controller.userList[index].company!,
            ),
          );
        },
      ),
    );
  }
}
