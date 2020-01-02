import 'package:flutter/material.dart';
import 'package:travel_app/models/destination_model.dart';

class DestinationCard extends StatelessWidget {
  final Destination destination;

  DestinationCard(this.destination);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/destination', arguments: destination);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 35.0),
        child: ClipRRect(
          key: key,
          borderRadius: BorderRadius.circular(20.0),
          child: Image.asset(
            destination.imageUrl,
            width: 220,
            height: 180,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
