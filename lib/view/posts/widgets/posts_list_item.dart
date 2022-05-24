import 'package:flutter/material.dart';
import 'package:project_getex/models/adress.model.dart';
import 'package:project_getex/models/company.model.dart';
import 'package:project_getex/models/post.model.dart';
import 'package:project_getex/models/user.model.dart';

class PostsListItem extends StatelessWidget {
  final Post post;
  final CompanyModel company;
  final AddressModel adress;
  final UserModel user;


  const PostsListItem({Key? key, required this.post,  required this.company,  required this.adress,  required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(top: 20, right: 20, bottom: 15, left: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(15),
            blurRadius: 1,
            spreadRadius: 1,
            offset: const Offset(0, 1),
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.title.toString(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: const TextStyle(fontSize: 17),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      user.username.toString(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: const TextStyle(fontSize: 17),
                    ),
                    Text(
                      company.name.toString(),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      softWrap: false,
                      style: const TextStyle(fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            post.body.toString(),
            style: const TextStyle(color: Colors.black87),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Text(
                  adress.street.toString(),
                  style: const TextStyle(color: Colors.black87),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  adress.city.toString(),
                  style: const TextStyle(color: Colors.black87),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
