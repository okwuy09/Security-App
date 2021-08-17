// import 'package:comment_box/comment/comment.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:security_app/components/Post.dart';
// import 'package:security_app/components/new_comment_page.dart';

// // ignore: must_be_immutablegit add
// class PostingPage extends StatefulWidget {
//   @override
//   _PostingPageState createState() => _PostingPageState();
// }

// class _PostingPageState extends State<PostingPage> {
//   final formKey = GlobalKey<FormState>();
//   final TextEditingController textController = TextEditingController();

//   int thumbUp = 0;
//   int thumbDown = 0;

//   void incrementthumbup() {
//     setState(() {
//       thumbUp++;
//     });
//   }

//   void incrementthumbDown() {
//     setState(() {
//       thumbDown++;
//     });
//   }

//   List<Post> posts = [
//     Post(
//         username: "Marianna",
//         userImage:
//             "https://hindibate.com/wp/Good-morning-nature-bird-image-304.png",
//         postImage:
//             "https://i2.wp.com/media.premiumtimesng.com/wp-content/files/2019/12/MPAPE-e1577550737404.jpg?fit=664%2C384&ssl=1",
//         caption:
//             "The series still won't be out for over a year, but the fact that a serialised story from Middle Earth is being produced is something for LOTR fans to be thrilled out."),
//     Post(
//         username: "Donavon",
//         userImage:
//             "https://hindibate.com/wp/Good-morning-nature-bird-image-304.png",
//         postImage:
//             "https://homelandnewsng.com/wp-content/uploads/2016/02/armed-robbers.jpg",
//         caption: "Cumque quia adipisci qui reprehenderit quo."),
//   ];

//   Widget postChild(data) {
//     return Container(
//       child: SingleChildScrollView(
//         child: Column(
//           children: <Widget>[
//             Divider(),
//             //post
//             Container(
//               width: MediaQuery.of(context).size.width,
//               child: ListView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   itemCount: data.length,
//                   itemBuilder: (context, i) {
//                     return Padding(
//                       padding: const EdgeInsets.only(
//                           left: 4.0, right: 4.0, bottom: 2.0),
//                       child: Container(
//                         color: Colors.black12,
//                         //color: Colors.white,
//                         child: Column(
//                           children: <Widget>[
//                             Container(
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: 10,
//                                 vertical: 10,
//                               ),
//                               child: Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: <Widget>[
//                                   GestureDetector(
//                                     child: Row(
//                                       children: [
//                                         Container(
//                                           height: 50.0,
//                                           width: 50.0,
//                                           decoration: BoxDecoration(
//                                               color: Colors.blue,
//                                               borderRadius: BorderRadius.all(
//                                                   Radius.circular(50))),
//                                           child: CircleAvatar(
//                                             radius: 50,
//                                             backgroundImage:
//                                                 NetworkImage(data[i].userImage),
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           width: 10,
//                                         ),
//                                         Text(
//                                           data[i].username,
//                                           style: GoogleFonts.roboto(
//                                             fontSize: 18,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                     onTap: () {},
//                                   ),

//                                   //post date
//                                   Container(
//                                     margin: EdgeInsets.symmetric(
//                                       horizontal: 14,
//                                     ),
//                                     alignment: Alignment.topLeft,
//                                     child: Text(
//                                       '${data[i].currentTime}',
//                                       textAlign: TextAlign.start,
//                                       style: TextStyle(
//                                           color: Colors.black,
//                                           fontSize: 15.0,
//                                           fontWeight: FontWeight.w500),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),

//                             Image(
//                               image: NetworkImage(
//                                 data[i].postImage,
//                               ),
//                               width: MediaQuery.of(context).size.width,
//                             ),

//                             // caption
//                             Container(
//                               width: MediaQuery.of(context).size.width,
//                               margin: EdgeInsets.symmetric(
//                                 horizontal: 10,
//                                 vertical: 5,
//                               ),
//                               child: RichText(
//                                 textAlign: TextAlign.justify,
//                                 softWrap: true,
//                                 overflow: TextOverflow.visible,
//                                 text: TextSpan(
//                                   children: [
//                                     TextSpan(
//                                       text: "${data[i].caption}",
//                                       style: TextStyle(
//                                           fontSize: 18,
//                                           fontWeight: FontWeight.w500,
//                                           color: Colors.black),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),

//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: <Widget>[
//                                 IconButton(
//                                   icon: Icon(Icons.thumb_up_off_alt),
//                                   onPressed: data[i].uplike,
//                                 ),
//                                 Text('${data[i].uplikeCount}'),
//                                 IconButton(
//                                     icon: Icon(Icons.thumb_down_off_alt),
//                                     onPressed: data[i].downlike),
//                                 Text('${data[i].downlikeCount}'),
//                                 IconButton(
//                                     icon: Icon(Icons.comment),
//                                     onPressed: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: (context) =>
//                                                   CommentScreen()));
//                                     }),
//                                 Text(''),
//                                 IconButton(
//                                     icon: Icon(Icons.money), onPressed: () {}),
//                                 IconButton(
//                                     icon: Icon(Icons.share), onPressed: () {}),
//                                 IconButton(
//                                     icon: Icon(Icons.save), onPressed: () {}),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: CommentBox(
//           userImage:
//               "https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400",
//           child: postChild(posts),
//           labelText: 'Write a Post...',
//           withBorder: false,
//           errorText: 'Post cannot be blank',
//           sendButtonMethod: () {
//             if (formKey.currentState!.validate()) {
//               print(textController.text);
//               setState(() {
//                 var value = Post(
//                     userImage:
//                         'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
//                     username: 'Uche',
//                     caption: textController.text,
//                     currentTime: DateTime.parse('2021-08-12 20:18:04Z'),
//                     postImage: 'https://i2.wp.com/media.premiumtimesng.com/wp-content/files/2019/12/MPAPE-e1577550737404.jpg?fit=664%2C384&ssl=1',
//                     );
//                 // var value = {
//                 //   'name': 'New User',
//                 //   'pic':
//                 //       'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
//                 //   'message': textController.text
//                 // };
//                 posts.insert(0, value);
//               });
//               textController.clear();
//               FocusScope.of(context).unfocus();
//             } else {
//               print("Not validated");
//             }
//           },
//           formKey: formKey,
//           commentController: textController,
//           backgroundColor: Colors.black,
//           textColor: Colors.white,
//           sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.white),
//         ),
//       ),
//     );
//   }
// }

