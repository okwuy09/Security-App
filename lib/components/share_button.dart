import 'package:flutter/material.dart';
import 'package:social_share/social_share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShareButton extends StatelessWidget {
  const ShareButton({
    Key? key,
    required this.color,
    required this.icon,
    required this.onpressed,
  }) : super(key: key);

  final Icon icon;
  final Color? color;
  final Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: CircleAvatar(
        radius: 28.0,
        backgroundColor: color,
        child: icon,
      ),
      onTap: onpressed,
    );
  }
}

Widget socialShareButtomSheet(context) {
  return Container(
    height: 300.0,
    width: MediaQuery.of(context).size.width,
    child: Card(
      color: Colors.transparent,
     margin: EdgeInsets.only(top: 30.0, left: 5.0, right: 5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ShareButton(
                    onpressed: () async {
                      SocialShare.shareFacebookStory(
                        'image.path',
                        "#ffffff",
                        "#000000",
                        "https://google.com",
                        appId: "xxxxxxxxxxxxx",
                      ).then((data) {
                        print(data);
                      });
                    },
                    color: Colors.blue,
                    icon: Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.white,
                    ),
                  ),
                ),
                 Expanded(
                  child: ShareButton(
                      onpressed: () async {
                        SocialShare.shareWhatsapp(
                          "Hello World \n https://google.com",
                        ).then((data) {
                          print(data);
                        });
                      },
                      color: Colors.greenAccent[700],
                      icon: Icon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 44.0,)),
                ),
                Expanded(
                  child: ShareButton(
                      onpressed: () async {
                        SocialShare.shareTwitter(
                          "This is Social Share twitter example",
                          hashtags: ["hello", "world", "foo", "bar"],
                          url: "https://google.com/#/hello",
                          trailingText: "\nhello",
                        ).then((data) {
                          print(data);
                        });
                      },
                      color: Colors.lightBlueAccent,
                      icon: Icon(FontAwesomeIcons.twitter,color: Colors.white)
                      ),
                ),
              ],
            ),
          ),
          
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ShareButton(
                      onpressed: () async {
                        SocialShare.shareSms(
                          "This is Social Share Sms example",
                          url: "\nhttps://google.com/",
                          trailingText: "\nhello",
                        ).then((data) {
                          print(data);
                        });
                      },
                      color: Colors.yellow[900],
                      icon: Icon(FontAwesomeIcons.sms, color: Colors.white)),
                ),
               
                Expanded(
                  child: ShareButton(
                      onpressed: () async {
                        SocialShare.shareTelegram(
                          "Hello World \n https://google.com",
                        ).then((data) {
                          print(data);
                        });
                      },
                      color: Colors.blueAccent,
                      icon: Icon(FontAwesomeIcons.telegramPlane, color: Colors.white,)),
                ),
          
                Expanded(
                  child: ShareButton(
                    onpressed: () async {
                      SocialShare.copyToClipboard(
                        "This is Social Share plugin",
                      ).then((data) {
                        print(data);
                      });
                    },
                    color: Colors.white,
                    icon: Icon(FontAwesomeIcons.clipboard, color: Colors.black54,),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
