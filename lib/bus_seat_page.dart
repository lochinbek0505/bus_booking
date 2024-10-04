import 'package:bus_ticket/payment_screen.dart';
import 'package:flutter/material.dart';

class SeatSelectionScreen extends StatefulWidget {
  @override
  _SeatSelectionScreenState createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  List<bool> seats =
      List.generate(40, (index) => false); // Represent seats with a boolean

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Select Seat')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 1.5,
        ),
        itemCount: seats.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                seats[index] = !seats[index];
              });
            },
            child: Container(
              margin: EdgeInsets.all(4),
              color: seats[index] ? Colors.green : Colors.grey,
              child: Center(child: Text('${index + 1}')),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            // Navigate to payment screen
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PaymentScreen()));
          },
          child: Text('Continue'),
        ),
      ),
    );
  }
}
