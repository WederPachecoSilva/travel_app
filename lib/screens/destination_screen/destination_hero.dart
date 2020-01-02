import 'package:flutter/material.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/screens/destination_screen/destination_screen_app_bar.dart';

class DestinationHero extends StatelessWidget {
  final Destination destination;

  DestinationHero(this.destination);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: <Widget>[
        Container(
          height: screenWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                offset: Offset(0.0, 5.0),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Hero(
            tag: destination.imageUrl,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
              child: Image(
                image: AssetImage(destination.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        DestinationScreenAppBar(),
        Positioned(
          left: 20.0,
          bottom: 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                destination.city,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.locationArrow,
                    size: 15.0,
                    color: Colors.white70,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    destination.country,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 20.0,
          bottom: 20.0,
          child: Icon(
            Icons.location_on,
            color: Colors.white70,
            size: 25.0,
          ),
        ),
      ],
    );
  }
}
