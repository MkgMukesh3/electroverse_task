class PostModel {
  String userImage;
  String userName;
  String postTime;
  String postImage;
  String postDes;
  bool? isLike;

  int notLike;
  List<PostComment> postComment = [];
  PostModel(
      {required this.postDes,
      required this.postImage,
      required this.postTime,
      required this.userImage,
      required this.userName,
      required this.notLike,
      this.isLike,
      required this.postComment});
}

class PostComment {
  String userName;
  String userImage;
  String comment;
  bool? isDeletable;
  PostComment({
    required this.comment,
    required this.userImage,
    required this.userName,
    this.isDeletable,
  });
}
