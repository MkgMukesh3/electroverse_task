import 'package:flutter/material.dart';
import 'package:mukesh_gupta_task/const.dart';
import 'package:mukesh_gupta_task/model/post_model.dart';

class CommentWidget extends StatelessWidget {
  CommentWidget({super.key, required this.postComment});
  PostComment postComment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 00, top: 20),
      child: Row(
        children: [
          Image.asset(
            postComment.userImage,
            scale: 2,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xffF1E2FD),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postComment.userName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black),
                  ),
                  Text(
                    postComment.comment,
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          )
          // Expanded(
          //   flex: 5,
          //   child: ListTile(
          //     tileColor: Color(0xff7006CB),
          //     title: const Text(
          //       "Kalpana",
          //       style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 14,
          //           color: Colors.white),
          //     ),
          //     subtitle: const Text(
          //       "Finally i did something for environment",
          //       style: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           fontSize: 14,
          //           color: Colors.white),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
