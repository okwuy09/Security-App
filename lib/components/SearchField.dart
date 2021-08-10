import 'package:flutter/material.dart';
import 'package:searchfield/searchfield.dart';
import 'package:security_app/constants.dart';

class MySearchField extends StatefulWidget {
  MySearchField({Key? key, required this.searchController});

  final TextEditingController searchController;

  @override
  _MySearchFieldState createState() => _MySearchFieldState();
}

class _MySearchFieldState extends State<MySearchField> {
  @override
  Widget build(BuildContext context) {
    return SearchField(
      searchStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
      ),
      controller: widget.searchController,
      searchInputDecoration: kTextFieldDecoration.copyWith(
        fillColor: Colors.black,
        filled: true,
        hintStyle: TextStyle(color: Colors.white),
        hintText: 'Search',
        prefixIcon: Icon(
          Icons.search,
          color: Colors.yellow[800],
        ),
      ),
      hasOverlay: true,
      suggestions: [
        'United States',
        'America',
        'Washington',
        'India',
        'Paris',
        'Jakarta',
        'Australia',
        'Lorem Ipsum'
      ],
    );
  }
}
