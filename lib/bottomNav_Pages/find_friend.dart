import 'package:flutter/material.dart';
import 'package:security_app/constants.dart';

class FindFriend extends StatefulWidget {
  const FindFriend({Key? key}) : super(key: key);

  @override
  _FindFriendState createState() => _FindFriendState();
}

class _FindFriendState extends State<FindFriend> {
  String? _ratingController;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Find Friend',
            style: kTextStyle.copyWith(
              color: Colors.yellow[800],
            ),
          ),
          automaticallyImplyLeading: false,
          toolbarHeight: 80.0,
          leading: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6.0, top: 6.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                        'https://cdn.pixabay.com/photo/2014/07/09/10/04/man-388104_960_720.jpg'),
                  ),
                ),
              ),
              Positioned(
                bottom: 25.0,
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
        body: Container(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.red,
                          size: 200,
                        ),
                        onTap: () {},
                      ),
                      Text(
                        'Find Friend From The List of Emergency Contact',
                        textAlign: TextAlign.center,
                        style: kTextStyle.copyWith(color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 35.0, right: 35.0),
                          child: DropdownButtonFormField<String>(
                            value: _ratingController,
                            items: ['Ruth', 'Chiamaka', 'Ogechukwu']
                                .map((label) => DropdownMenuItem(
                                      child: Text(label.toString()),
                                      value: label,
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                _ratingController = value;
                              });
                            },
                            decoration:
                                kTextFieldDecoration.copyWith(hintText: ''),
                            hint: Text('Select Friend'),
                            icon: Icon(Icons.person),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Container(
                          color: Colors.white,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Material(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(18.0),
                                        elevation: 5.0,
                                        child: MaterialButton(
                                          onPressed: () {},
                                          minWidth: 150.0,
                                          height: 42.0,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Find Friend',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.yellow[800],
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                              SizedBox(width: 10),
                                              Icon(
                                                Icons.person_search_rounded,
                                                color: Colors.yellow[800],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
