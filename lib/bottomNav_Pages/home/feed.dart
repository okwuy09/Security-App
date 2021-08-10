import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:security_app/components/Post.dart';

// ignore: must_be_immutable
class Feed extends StatelessWidget {
  List<Post> posts = [
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
    // Post(
    //     username: "Regan",
    //     userImage:
    //         "https://s3.amazonaws.com/uifaces/faces/twitter/thedjpetersen/128.jpg",
    //     postImage:
    //         "https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    //     caption: "Enim vero porro aliquid dignissimos."),
    // Post(
    //     username: "Garnett",
    //     userImage:
    //         "https://s3.amazonaws.com/uifaces/faces/twitter/sterlingrules/128.jpg",
    //     postImage:
    //         "https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    //     caption: "Veritatis tempora eius non hic delectus voluptas et."),
    // Post(
    //     username: "Alvah",
    //     userImage:
    //         "https://s3.amazonaws.com/uifaces/faces/twitter/IsaryAmairani/128.jpg",
    //     postImage:
    //         "https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    //     caption:
    //         "Nostrum voluptatem non minus totam amet quis culpa voluptatem."),
    // Post(
    //     username: "Kailey",
    //     userImage:
    //         "https://s3.amazonaws.com/uifaces/faces/twitter/stephcoue/128.jpg",
    //     postImage:
    //         "https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    //     caption: "Aut voluptatem iusto est nesciunt vel fuga optio et."),
    // Post(
    //     username: "Ellie",
    //     userImage:
    //         "https://s3.amazonaws.com/uifaces/faces/twitter/swooshycueb/128.jpg",
    //     postImage:
    //         "https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    //     caption: "Molestiae id porro numquam iure."),
    // Post(
    //     username: "Jeremie",
    //     userImage:
    //         "https://s3.amazonaws.com/uifaces/faces/twitter/sindresorhus/128.jpg",
    //     postImage:
    //         "https://pixabay.com/photos/tree-sunset-clouds-sky-silhouette-736885/?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
    //     caption: "Et quod sunt tempore."),
  ];

  @override
  Widget build(BuildContext context) {
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
                    itemCount: posts.length,
                    itemBuilder: (ctx, i) {
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
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Image(
                                              image: NetworkImage(
                                                  posts[i].userImage),
                                              width: 50,
                                              height: 50,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            posts[i].username,
                                            style: GoogleFonts.roboto(
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
                                        style: TextStyle(
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
                                  posts[i].postImage,
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
                                        text: "${posts[i].caption}",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
    
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.thumb_up_off_alt),
                                      onPressed: () {}),
                                  Text('5'),
                                  IconButton(
                                      icon: Icon(Icons.thumb_down_off_alt),
                                      onPressed: () {}),
                                  Text('2'),
                                  IconButton(
                                      icon: Icon(Icons.comment),
                                      onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.money), onPressed: () {}),
                                  IconButton(
                                      icon: Icon(Icons.share), onPressed: () {}),
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
