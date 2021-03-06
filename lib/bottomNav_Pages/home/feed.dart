import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_app/components/Post.dart';
import 'package:security_app/components/new_comment_page.dart';
import 'package:security_app/components/share_button.dart';

// ignore: must_be_immutable
class Feed extends StatefulWidget {
  List? postsList;
  Feed({this.postsList});
  @override
  _FeedState createState() => _FeedState(postsList);
}

class _FeedState extends State<Feed> {
  // //MyComment comment = MyComment.fileData;
  int thumbUp = 0;
  int thumbDown = 0;
  VoidCallback? onpressed;
  // //int commentNumber = 0;

  void incrementthumbup() {
    setState(() {
      thumbUp++;
    });
  }

  void incrementthumbDown() {}

  getlist() {}

  List? postsList;
  _FeedState(this.postsList);

  @override
  Widget build(BuildContext context) {
    postsList = [
      Post(
          username: "Marianna",
          userImage:
              "https://hindibate.com/wp/Good-morning-nature-bird-image-304.png",
          postImage:
              "https://i2.wp.com/media.premiumtimesng.com/wp-content/files/2019/12/MPAPE-e1577550737404.jpg?fit=664%2C384&ssl=1",
          caption:
              "The series still won't be out for over a year, but the fact that a serialised story from Middle Earth is being produced is something for LOTR fans to be thrilled out."),
      Post(
          username: "Donavon",
          userImage:
              "https://hindibate.com/wp/Good-morning-nature-bird-image-304.png",
          postImage:
              "https://homelandnewsng.com/wp-content/uploads/2016/02/armed-robbers.jpg",
          caption: "Cumque quia adipisci qui reprehenderit quo."),
      Post(
          username: "Sandra",
          userImage:
              "https://hindibate.com/wp/Good-morning-beautiful-nature-image-301.png",
          postImage:
              "https://newsghana.com.gh/wp-content/uploads/2014/06/Pix-1-2.jpg",
          caption:
              "Et in corrupti aperiam. Ut incidunt ut illo recusandae accusantium. Id et sapiente cumque voluptas quo possimus. Neque at corporis rerum quidem magnam."),
      Post(
          username: "Trace",
          userImage:
              "https://st3.depositphotos.com/10560864/15470/i/1600/depositphotos_154708300-stock-photo-natural-portraitbeautiful-asian-girl-smiling.jpg",
          postImage:
              "https://guardian.ng/wp-content/uploads/2017/01/Bank-robbery.jpg",
          caption: "Quis saepe aut ut quidem ut."),
    ];
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Divider(),
              //post
              Container(
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: postsList!.length,
                    itemBuilder: (context, i) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 4.0, right: 4.0, bottom: 2.0),
                        child: Container(
                          color: Colors.black12,
                          //color: Colors.white,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 10,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    GestureDetector(
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 50.0,
                                            width: 50.0,
                                            decoration: BoxDecoration(
                                                color: Colors.blue,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(50))),
                                            child: CircleAvatar(
                                              radius: 50,
                                              backgroundImage: NetworkImage(
                                                  postsList![i].userImage),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            postsList![i].username,
                                            style: GoogleFonts.poppins(
                                              fontSize: 18,
                                            ),
                                          ),
                                        ],
                                      ),
                                      onTap: () {},
                                    ),

                                    //post date
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                        horizontal: 14,
                                      ),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "30 May 2020",
                                        textAlign: TextAlign.start,
                                        style: GoogleFonts.sora(
                                            color: Colors.black,
                                            fontSize: 15.0,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Image(
                                image: NetworkImage(
                                  postsList![i].postImage,
                                ),
                                width: MediaQuery.of(context).size.width,
                              ),

                              // caption
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 5,
                                ),
                                child: RichText(
                                  textAlign: TextAlign.justify,
                                  softWrap: true,
                                  overflow: TextOverflow.visible,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "${postsList![i].caption}",
                                        style: GoogleFonts.sora(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                    icon: Icon(Icons.thumb_up_off_alt),
                                    onPressed: () {
                                      setState(() {
                                        thumbUp++;
                                      });
                                    },
                                  ),
                                  Text('$thumbUp'),
                                  IconButton(
                                      icon: Icon(Icons.thumb_down_off_alt),
                                      onPressed: () {
                                        setState(() {
                                          thumbDown++;
                                        });
                                      }),
                                  Text('$thumbDown'),
                                  IconButton(
                                      icon: Icon(Icons.comment),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    CommentScreen()));
                                      }),
                                  Text(''),
                                  IconButton(
                                      icon: Icon(Icons.money),
                                      onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.share),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            backgroundColor: Colors.transparent,
                                            context: context,
                                            builder: (builder) =>
                                                socialShareButtomSheet(context));
                                      }),
                                  IconButton(
                                      icon: Icon(Icons.save), onPressed: () {}),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

