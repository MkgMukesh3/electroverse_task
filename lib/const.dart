// images assets
import 'model/post_model.dart';

const notificationIcon = "assets/images/ic_notification.png";
const calendarIcon = "assets/images/ic_calendar.png";
const menuIcon = "assets/images/ic_hamburger.png";
const postIcon = "assets/images/ic_post.png";
const likeIcon = "assets/images/ic_like_selected.png";
const unlikeIcon = "assets/images/ic_like_unselected.png";
const tickIcon = "assets/images/ic_tick.png";
const avatarIcon1 = "assets/images/avatar1.png";
const avatarIcon2 = "assets/images/avatar2.png";
const avatarIcon3 = "assets/images/avatar3.png";
const bg = "assets/images/bg.png";
const homeTopBg = "assets/images/home_top_bg.png";
const backIcon = "assets/images/ic_back.png";
const bannerIcon1 = "assets/images/banner1.png";
const bannerIcon2 = "assets/images/banner2.png";
const bannerIcon3 = "assets/images/banner3.png";
const commentIcon = "assets/images/ic_comment.png";
const createIcon = "assets/images/ic_create.png";
const crossRedIcon = "assets/images/ic_cross_red.png";
const crossIcon = "assets/images/ic_cross.png";
const loginBottomBg = "assets/images/login_bottom_bg.png";
const loginLogo = "assets/images/login_logo.png";
const postedImage1 = "assets/images/posted_image1.png";
const postedImage2 = "assets/images/posted_image2.png";
const speakerAvatar = "assets/images/speaker_avatar.png";
const splashLogo = "assets/images/splash_logo_grp.png";
const topBg = "assets/images/top_bg.png";

//local Data

List<PostModel> postLists = [
  PostModel(
    postDes: "Plantation Activity made fun!",
    postImage: postedImage1,
    postTime: "Posted 30 min ago",
    userImage: avatarIcon1,
    userName: "Ankit Rastogi",
    notLike: 105,
    postComment: [
      PostComment(
        comment: "testing",
        userImage: avatarIcon2,
        userName: "Kalpana",
      ),
      PostComment(
        comment: "Testing is done",
        userImage: avatarIcon3,
        userName: "raju",
      ),
    ],
  ),
  PostModel(
    postDes: "Plantation Activity made fun!",
    postImage: postedImage2,
    postTime: "Posted 30 min ago",
    userImage: avatarIcon2,
    userName: "Kalpana",
    notLike: 106,
    postComment: [
      PostComment(
        comment: "I have completed the task",
        userImage: avatarIcon1,
        userName: "Ankit Rastog",
      ),
      PostComment(
        comment: "Testing is done",
        userImage: avatarIcon3,
        userName: "raju",
      ),
    ],
  ),
  PostModel(
    postDes: "Plantation Activity made fun!",
    postImage: postedImage1,
    postTime: "Posted 30 min ago",
    userImage: avatarIcon3,
    userName: "Ankit Rastogi",
    notLike: 55,
    postComment: [
      PostComment(
        comment: "testing",
        userImage: avatarIcon2,
        userName: "Kalpana",
      ),
    ],
  )
];
