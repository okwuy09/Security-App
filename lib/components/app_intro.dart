import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';

class AppIntro extends StatefulWidget {
  const AppIntro({Key? key}) : super(key: key);

  @override
  _AppIntroState createState() => _AppIntroState();
}

class _AppIntroState extends State<AppIntro> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        backgroundImage: 'images/security2.jpg',
        title: "Yours Security APP",
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        //pathImage: "images/photo_eraser.png",
        backgroundColor: Colors.blueAccent,
        //Color(0xfff5a623),
      ),
    );
    slides.add(
      new Slide(
        backgroundImage: 'images/security1.jpg',
        title: "PENCIL",
        description:
            "Ye indulgence unreserved connection alteration appearance",
        //pathImage: "images/photo_pencil.png",
        backgroundColor: Colors.blueGrey,
        //Color(0xff203152),
      ),
    );
    slides.add(
      new Slide(
        backgroundImage: 'images/security.jpg',
        title: "RULER",
        description:
            "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
        //pathImage: "images/photo_ruler.png",
        backgroundColor: Colors.deepPurple,
        //Color(0xff9932CC),
      ),
    );
  }

  void onDonePress() {
    // Do what you want
    print("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}
