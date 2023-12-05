import 'package:flutter/material.dart';
import 'package:mukesh_gupta_task/const.dart';
import 'package:mukesh_gupta_task/model/post_model.dart';
import 'package:mukesh_gupta_task/view/add_post/add_post.dart';
import 'package:mukesh_gupta_task/widgets/post_widget.dart';

class AllPost extends StatefulWidget {
  const AllPost({super.key});

  @override
  State<AllPost> createState() => _AllPostState();
}

class _AllPostState extends State<AllPost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: 60,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      topBg,
                    ),
                    fit: BoxFit.fill)),
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    backIcon,
                    scale: 2,
                  ),
                ),
                const Text(
                  "Logo",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () async {
                    var data = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AddPost(),
                      ),
                    );
                    if (data == true) {
                      setState(() {});
                    }
                  },
                  child: Image.asset(
                    createIcon,
                    scale: 2,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: postLists.length,
              itemBuilder: (BuildContext context, index) => PostWidget(
                postDetail: postLists[index],
                onLikeTap: () {
                  if (postLists[index].isLike != true) {
                    postLists[index].isLike = true;
                    postLists[index].notLike += 1;
                  } else {
                    postLists[index].isLike = false;
                    postLists[index].notLike -= 1;
                  }
                  setState(() {});
                },
                onCommentAdd: (val) {
                  postLists[index].postComment.add(PostComment(
                      comment: val,
                      userImage: avatarIcon1,
                      userName: "Mukesh Gupta"));
                  setState(() {});
                },
              ),
            ),
          )
        ],
      )),
    );
  }
}
