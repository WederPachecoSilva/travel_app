import 'package:flutter/material.dart';
import 'package:travel_app/models/destination_model.dart';
import 'package:travel_app/screens/home_screen/destination_card.dart';

class DestinationCarousel extends StatelessWidget {
  DestinationCarousel({Key key}) : super(key: key);

  Widget _destinationLeading(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Top Destinations',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
                letterSpacing: 1.0),
          ),
          GestureDetector(
            onTap: () => print('Seasde All'),
            child: Text(
              'See All',
              style: TextStyle(
                  color: Theme.of(context).primaryColor, fontSize: 20),
            ),
          )
        ],
      ),
    );
  }

  _destinationCards(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: 200.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: destinations.length,
          itemBuilder: (BuildContext context, int index) {
            return DestinationCard(
              destinations[index],
            );
          },
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _destinationLeading(context),
        _destinationCards(context),
      ],
    );
  }
}
