import 'dart:io';
// import 'dart:math';

import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:security_app/bottomNav_Pages/home/feed.dart';
import 'package:security_app/bottomNav_Pages/home_page.dart';
import 'package:security_app/components/Post.dart';

class WritePost extends StatefulWidget {
  //final MyProfileData myData;
  //WritePost({this.myData});
  @override
  State<StatefulWidget> createState() => _WritePost();
}

class _WritePost extends State<WritePost> {
  final formKey = GlobalKey<FormState>();
  TextEditingController writingTextController = TextEditingController();
  final FocusNode _nodeText1 = FocusNode();
  FocusNode writingTextFocus = FocusNode();
  late File _postImageFile;
  String? dropdownValue = 'Public';
  //bool _isLoading = false;
  //File _postImageFile;

  KeyboardActionsConfig _buildConfig(BuildContext context) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardActionsItem(
          displayArrows: false,
          focusNode: _nodeText1,
        ),
        KeyboardActionsItem(
          displayArrows: false,
          focusNode: writingTextFocus,
          toolbarButtons: [
            (node) {
              return GestureDetector(
                onTap: () {
                  print('Select Image');
                  // _getImageAndCrop();
                },
                child: Container(
                  color: Colors.grey[200],
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.add_photo_alternate, size: 28),
                      Text(
                        "Add Image",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              );
            },
          ],
        ),
      ],
    );
  }

  // void _postToFB() async {
  //   setState(() {
  //     _isLoading = true;
  //   });
  //   String postID = Utils.getRandomString(8) + Random().nextInt(500).toString();
  //   String postImageURL;
  //   if(_postImageFile != null){
  //     postImageURL = await FBStorage.uploadPostImages(postID: postID, postImageFile: _postImageFile);
  //   }
  //   FBCloudStore.sendPostInFirebase(postID,writingTextController.text,widget.myData,postImageURL ?? 'NONE');

  //   setState(() {
  //     _isLoading = false;
  //   });
  //   Navigator.pop(context);
  // }

  List? postsList;

  @override
  Widget build(BuildContext context) {
    // List<Post> posts = [
    //   Post(
    //       username: "Marianna",
    //       userImage:
    //           "https://hindibate.com/wp/Good-morning-nature-bird-image-304.png",
    //       postImage:
    //           "https://i2.wp.com/media.premiumtimesng.com/wp-content/files/2019/12/MPAPE-e1577550737404.jpg?fit=664%2C384&ssl=1",
    //       caption:
    //           "The series still won't be out for over a year, but the fact that a serialised story from Middle Earth is being produced is something for LOTR fans to be thrilled out."),
    // ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        title: Text(
          'Write Post',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey[50])),
            onPressed: () {
              print('post summited');
              if (writingTextController.text != null) {
                print(writingTextController.text);
                setState(() {
                  var value = Post(
                    username: "Okwuchukwu",
                    userImage:
                        "https://hindibate.com/wp/Good-morning-nature-bird-image-304.png",
                    postImage:
                        "https://i2.wp.com/media.premiumtimesng.com/wp-content/files/2019/12/MPAPE-e1577550737404.jpg?fit=664%2C384&ssl=1",
                    caption: writingTextController.text,
                  );
                  postsList!.insert(0, value);
                  Feed(postsList: postsList);
                });
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage()));
                writingTextController.clear();
                FocusScope.of(context).unfocus();
              } else {
                print("Not validated");
              }
            },
            //_postToFB(),
            child: Text(
              'Post',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.yellow[800],
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      body: Stack(
        children: <Widget>[
          KeyboardActions(
            config: _buildConfig(context),
            child: Column(
              children: <Widget>[
                Divider(
                  height: 1,
                  color: Colors.black,
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'User ID',
                              style: TextStyle(
                                color: Colors.yellow[800],
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 10.0),
                            DropdownButton<String>(
                              value: dropdownValue,
                              onChanged: (String? newValue) {
                                // newValue != null && newValue.length == 6
                                //     ? print('user id is public')
                                //     : print('user ID is private');

                                setState(() {
                                  dropdownValue = newValue;
                                });
                              },
                              items: <String>[
                                'Public',
                                'Private'
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                            ),
                          ],
                        ),
                        TextFormField(
                          key: formKey,
                          autofocus: true,
                          focusNode: writingTextFocus,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'What\'s is happening?.',
                            hintMaxLines: 4,
                          ),
                          controller: writingTextController,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                        ),
                        // _postImageFile != null ? Image.file(_postImageFile, fit: BoxFit.fill,) :
                        //   Container(),
                      ],
                    ),
                  ),
                ),
                Container(),
              ],
            ),
          ),
          // Utils.loadingCircle(_isLoading),
        ],
      ),
    );
  }
}

//   Future<void> _getImageAndCrop() async {
//     File imageFileFromGallery = await ImagePicker.pickImage(source: ImageSource.gallery);
//     if (imageFileFromGallery != null) {
//       File cropImageFile = await Utils.cropImageFile(imageFileFromGallery);//await cropImageFile(imageFileFromGallery);
//       if (cropImageFile != null) {
//         setState(() {
//           _postImageFile = cropImageFile;
//         });
//       }
//     }
//   }
// }