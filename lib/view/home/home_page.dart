import 'package:flutter/material.dart';
import 'package:mukesh_gupta_task/const.dart';
import 'package:mukesh_gupta_task/view/drawer/drawer.dart';
import 'package:mukesh_gupta_task/view/posts/all_post.dart';
import 'package:mukesh_gupta_task/widgets/post_widget.dart';

import '../../model/post_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: MyDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      homeTopBg,
                    ),
                    fit: BoxFit.fill),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _scaffoldKey.currentState?.openDrawer();
                          },
                          child: Image.asset(
                            menuIcon,
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
                        Image.asset(
                          notificationIcon,
                          scale: 2,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 40, bottom: 5),
                      child: Text(
                        "Upcoming Events",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Column(
                        children: [
                          ListTile(
                            title: const Text(
                              "Session: Ice Breaker Games Activity",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            subtitle: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Image.asset(
                                    calendarIcon,
                                    scale: 1.5,
                                  ),
                                ),
                                const Text(
                                  "5 Jan | 1.00pm - 1.30pm",
                                  style: TextStyle(
                                    color: Color(0xff7006CB),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  // SizedBox(
                  //   child: PageView.builder(
                  //     itemCount: 3,
                  //     pageSnapping: true,
                  //     itemBuilder: (context, pagePosition) {
                  //       print("pagePosition $pagePosition");
                  //       return SizedBox(
                  //         width: 100,
                  //         child: Image.asset(bannerIcon1),
                  //       );
                  //     },
                  //   ),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Text(
                            "Featured Speakers",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Color(
                                    0x29000000), // Color code with 20% opacity
                                blurRadius: 20.0, // 20% blur
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        speakerAvatar,
                                        scale: 2,
                                      ),
                                      const Text(
                                        "Alisha Shikhar",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const Text(
                                        "Yoga Expert",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: 80,
                                width: 2,
                                margin: EdgeInsets.only(top: 5, bottom: 5),
                                color: Colors.grey[200],
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Session: Ice Breaker Games Activity",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                              calendarIcon,
                                              scale: 1.5,
                                            ),
                                          ),
                                          const Text(
                                            "5 Jan | 1.00pm - 1.30pm",
                                            style: TextStyle(
                                              color: Color(0xff7006CB),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            "What's happening arround you",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ...List.generate(
                    postLists.length,
                    (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => AllPost(),
                            ),
                          );
                        },
                        child: PostWidget(
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
                            postLists[index].postComment.add(
                                  PostComment(
                                      comment: val,
                                      userImage: avatarIcon1,
                                      userName: "Mukesh Gupta"),
                                );
                            setState(() {});
                          },
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
