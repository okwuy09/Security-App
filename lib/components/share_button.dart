import 'package:flutter/material.dart';
import 'package:social_share/social_share.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:screenshot/screenshot.dart';

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
  ScreenshotController screenshotController = ScreenshotController();
  return GestureDetector(
    onTap: () => Navigator.pop(context),
    child: Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.transparent,
        margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 40.0, bottom: 10),
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
                        size: 28,
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
                        icon: Icon(
                          FontAwesomeIcons.whatsapp,
                          color: Colors.white,
                          size: 48.0,
                        )),
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
                        icon:
                            Icon(FontAwesomeIcons.twitter, color: Colors.white, size: 25)),
                  ),
                  Expanded(
                    child: ShareButton(
                      onpressed: () async {
                        await screenshotController.capture().then((image) async {
                          SocialShare.shareInstagramStory(
                            'image.path',
                            backgroundTopColor: "#ffffff",
                            backgroundBottomColor: "#000000",
                            attributionURL: "https://deep-link-url",
                            backgroundImagePath: 'image.path',
                          ).then((data) {
                            print(data);
                          });
                        });
                      },
                      color: Colors.pink,
                      icon: Icon(FontAwesomeIcons.instagram,
                          color: Colors.white, size: 36),
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
                        icon: Icon(FontAwesomeIcons.sms, color: Colors.white, size: 30)),
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
                        icon: Icon(
                          FontAwesomeIcons.telegramPlane,
                          color: Colors.white, size: 30,
                        )),
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
                      icon: Icon(
                        FontAwesomeIcons.clipboard,
                        color: Colors.black54, size: 32,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ShareButton(
                      onpressed: () async {
                        SocialShare.checkInstalledAppsForShare().then((data) {
                          print(data.toString());
                        });
                      },
                      color: Colors.white,
                      icon: Icon(
                        FontAwesomeIcons.appStoreIos,
                        color: Colors.yellow[800], size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
