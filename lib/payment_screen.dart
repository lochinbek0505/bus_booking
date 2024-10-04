import 'package:bus_ticket/ticket_screen.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Payment')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ticket Price: IDR 10,000'),
            Text('Convenience Fee: IDR 5,000'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to ticket confirmation
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TicketScreen()));
              },
              child: Text('Pay and Confirm'),
            ),
          ],
        ),
      ),
    );
  }
}
