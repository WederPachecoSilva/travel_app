import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

typedef EventCallback = void Function();

class DestinationScreenAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                iconSize: 30.0,
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
              IconButton(
                icon: Icon(FontAwesomeIcons.sortAmountDown),
                iconSize: 25.0,
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
