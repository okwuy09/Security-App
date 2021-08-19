import 'package:flutter/material.dart';
import 'package:security_app/constants.dart';

class Sos extends StatelessWidget {
  const Sos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
                    'Panic Button',
                    style: kTextStyle.copyWith(
                      color: Colors.yellow[800],
                    ),
                  ),
          automaticallyImplyLeading: false,
          toolbarHeight: 80.0,
          leading: Stack(
                children: [
                   Padding(
            padding: const EdgeInsets.only(left: 6.0, top: 15),
            child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2014/07/09/10/04/man-388104_960_720.jpg'),
              ),
              ),
          ),
           Positioned(
                  bottom: 15.0,
                  right: 3.0,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.greenAccent[700],
                  ),
                ),
                ],
              ),
          ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          SizedBox(height: 50.0),
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
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Material(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.circular(25.0),
                                        elevation: 5.0,
                                        child: MaterialButton(
                                          onPressed: () {},
                                          minWidth: 150.0,
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
                                    ),
                                  ],
                                ),
                                TextButton(
                                  child: Text(
                                    'View Numbers',
                                    style: kTextStyle.copyWith(
                                        fontSize: 20, color: Colors.lightBlue),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
}
