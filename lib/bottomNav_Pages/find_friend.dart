import 'package:flutter/material.dart';
import 'package:security_app/components/dropdown_field.dart';
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
                        SizedBox(width: 50.0),
                        Text(
                          'Find Friend',
                          style: kTextStyle.copyWith(
                            color: Colors.yellow[800],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.0),
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
            Padding(
              padding: const EdgeInsets.only(left: 35.0, right: 35.0),
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
                decoration: kTextFieldDecoration.copyWith(hintText: ''),
                hint: Text('Select Friend'),
                icon: Icon(Icons.person),
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
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Material(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(18.0),
                                  elevation: 5.0,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    minWidth: 200.0,
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
                            ],
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
