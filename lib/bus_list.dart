import 'package:flutter/material.dart';

import 'bus_seat_page.dart';

class BusListScreen extends StatelessWidget {
  final String direction;
  final DateTime date;

  BusListScreen({required this.direction, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('$direction')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Bus 1'),
            subtitle: Text('Price: IDR 10,000'),
            onTap: () {
              // Navigate to seat selection screen
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SeatSelectionScreen()));
            },
          ),
          ListTile(
            title: Text('Bus 2'),
            subtitle: Text('Price: IDR 15,000'),
            onTap: () {
              // Navigate to seat selection screen
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SeatSelectionScreen()));
            },
          ),
        ],
      ),
    );
  }
}
