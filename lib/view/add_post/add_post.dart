import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mukesh_gupta_task/const.dart';
import 'package:mukesh_gupta_task/model/post_model.dart';

class AddPost extends StatefulWidget {
  const AddPost({super.key});

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  File? _image;

  // This is the image picker
  final _picker = ImagePicker();
  // Implementing the image picker
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  TextEditingController desController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(
                crossRedIcon,
                scale: 2,
              ),
            ),
            trailing: GestureDetector(
              onTap: () {
                if (_image != null) {
                  postLists.add(PostModel(
                      postDes: desController.text,
                      postImage: _image!.path,
                      postTime: "just Now",
                      userImage: avatarIcon1,
                      userName: "Mukesh Gupta",
                      notLike: 0,
                      postComment: []));
                  Navigator.pop(context, true);
                }
              },
              child: Image.asset(
                tickIcon,
                scale: 2,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
            child: Column(
              children: [
                if (_image != null)
                  Container(
                    height: 200,
                    width: 150,
                    child: Stack(
                      children: [
                        SizedBox(
                            height: 200,
                            width: 150,
                            child: Image.file(
                              _image!,
                              fit: BoxFit.cover,
                            )),
                        Container(
                          height: 30,
                          color: Color(0xff7006CB).withOpacity(0.5),
                        ),
                        Positioned(
                          right: 5,
                          top: 2,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _image = null;
                              });
                            },
                            child: Image.asset(
                              crossIcon,
                              scale: 2,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                TextFormField(
                  minLines: _image != null ? null : 5,
                  maxLines: _image != null ? null : 10,
                  controller: desController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10, top: 10),
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff000000),
                    ),
                    hintText: "Write Something...",

                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1, color: Color(0xffF6F6F6)), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red,
                      ), //<-- SEE HERE
                      borderRadius: BorderRadius.circular(5.0),
                    ),

                    // border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              _openImagePicker();
            },
            child: Container(
              margin: EdgeInsets.only(top: 20, left: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  colors: [Color(0xFFF10177), Color(0xFF7006CB)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  transform: GradientRotation(89), // 89 degrees in radians
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Add Image',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
