import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mukesh_gupta_task/const.dart';
import 'package:mukesh_gupta_task/model/post_model.dart';
import 'package:mukesh_gupta_task/view/posts/post_comments.dart';

class PostWidget extends StatelessWidget {
  PostWidget(
      {super.key,
      required this.postDetail,
      required this.onLikeTap,
      required this.onCommentAdd});

  PostModel postDetail;
  Function onLikeTap;
  Function onCommentAdd;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Image.asset(
              postDetail.userImage,
              scale: 2,
            ),
            title: Text(
              postDetail.userName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            subtitle: Text(
              postDetail.postTime,
              style: const TextStyle(
                fontSize: 11,
                color: Color(0xffFF5B00),
              ),
            ),
          ),
          Container(
            height: 200,
            width: MediaQuery.sizeOf(context).width - 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: postDetail.postImage.contains("assets/")
                ? Image.asset(
                    postDetail.postImage,
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    File(
                      postDetail.postImage,
                    ),
                    fit: BoxFit.contain,
                  ),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                GestureDetector(
                  onTap: () {
                    onLikeTap();
                  },
                  child: Image.asset(
                    postDetail.isLike == true ? likeIcon : unlikeIcon,
                    scale: 2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(postDetail.notLike.toString()),
                )
              ],
            ),
            trailing: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PostComments(
                        postDetail: postDetail,
                        commentAdd: (val) {
                          onCommentAdd(val);
                        }),
                  ),
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    commentIcon,
                    scale: 2,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(postDetail.postComment.length.toString()),
                  )
                ],
              ),
            ),
          ),
          Text(
            postDetail.postDes,
            style: const TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Divider()
        ],
      ),
    );
  }
}
