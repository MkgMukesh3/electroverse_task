import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mukesh_gupta_task/const.dart';
import 'package:mukesh_gupta_task/model/post_model.dart';
import 'package:mukesh_gupta_task/widgets/comment_widget.dart';

class PostComments extends StatefulWidget {
  PostComments({super.key, required this.postDetail, required this.commentAdd});
  PostModel postDetail;
  Function commentAdd;

  @override
  State<PostComments> createState() => _PostCommentsState();
}

class _PostCommentsState extends State<PostComments> {
  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height - 100,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    tileColor: Color(0xff7006CB),
                    leading: Image.asset(
                      widget.postDetail.userImage,
                      scale: 2,
                    ),
                    title: Text(
                      widget.postDetail.userName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: MediaQuery.sizeOf(context).width - 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: widget.postDetail.postImage.contains("assets/")
                        ? Image.asset(
                            widget.postDetail.postImage,
                            fit: BoxFit.cover,
                          )
                        : Image.file(
                            File(
                              widget.postDetail.postImage,
                            ),
                            fit: BoxFit.contain,
                          ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                    child: Text(
                      widget.postDetail.postDes,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                  ListTile(
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          unlikeIcon,
                          scale: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(widget.postDetail.notLike.toString()),
                        )
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          commentIcon,
                          scale: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                              widget.postDetail.postComment.length.toString()),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  ...List.generate(
                    widget.postDetail.postComment.length,
                    (index) => CommentWidget(
                      postComment: widget.postDetail.postComment[index],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
              decoration: const BoxDecoration(
                color: Colors.white,
                border: Border(
                  top: BorderSide(
                    color: Color.fromARGB(255, 226, 226, 226),
                    width: 1.0,
                  ),
                ),
              ),
              height: 60,
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: commentController,
                      decoration: InputDecoration(
                        hintText: "Write a comment...",
                        contentPadding: EdgeInsets.only(top: 5, left: 20),
                        hintStyle: const TextStyle(
                            color: Colors.black54, fontSize: 13),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xffF6F6F6)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 1,
                              color: Color(0xffF6F6F6)), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.red,
                          ), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      if (commentController.text.isNotEmpty) {
                        widget.commentAdd(commentController.text);
                        setState(() {
                          commentController.clear();
                        });
                      }
                    },
                    child: Image.asset(
                      postIcon,
                      scale: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
