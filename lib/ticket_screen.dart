import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ticket')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.qr_code, size: 200),
            Text('Booking ID: BUS123456'),
            Text('Date: 19 February 2024'),
            Text('Total: IDR 25,000'),
          ],
        ),
      ),
    );
  }
}
