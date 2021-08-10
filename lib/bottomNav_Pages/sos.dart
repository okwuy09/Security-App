import 'package:flutter/material.dart';
import 'package:security_app/components/Appbutton.dart';
import 'package:security_app/constants.dart';

class Sos extends StatelessWidget {
  const Sos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20, left: 10),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(35),
                                    child: Image(
                                      image: NetworkImage(
                                          'https://hindibate.com/wp/Good-morning-nature-bird-image-304.png'),
                                      width: 50,
                                      height: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  SizedBox(width: 2.0),
                                  CircleAvatar(
                                    radius: 6,
                                    backgroundColor: Colors.greenAccent[700],
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(height: 2),
                          ],
                        ),
                        SizedBox(width: 50.0),
                        Text(
                          'Panic Button',
                          style: kTextStyle.copyWith(
                            color: Colors.yellow[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0),
                  GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.red[900],
                      radius: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'SOS',
                            style: kTextStyle.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'Click Here',
                            style: kTextStyle.copyWith(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                  SizedBox(height: 60.0),
                  RoundedButton(
                    title: 'Cancel',
                    color: Colors.green[900],
                    onpressed: () {},
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Container(
                      color: Colors.white,
                      //height: 100,
                      //width: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            children: [
                              Material(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(18.0),
                                elevation: 5.0,
                                child: MaterialButton(
                                  onPressed: () {},
                                  minWidth: 200.0,
                                  height: 42.0,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Add Emergency Number',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.yellow[800],
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.add_box_sharp,
                                        color: Colors.yellow[800],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //SizedBox(height: 5),
                          TextButton(
                            child: Text(
                              'View Numbers',
                              style: kTextStyle.copyWith(
                                  fontSize: 20, color: Colors.lightBlue),
                            ),
                            onPressed: () {},
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
