import 'package:flutter/material.dart';

class DeliveryProgressPage extends StatelessWidget {
  DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Delivery in Progress. . . ")),
        body: Column(
          children: [
            Image.asset('lib/image/1..png'),
          ],
        ));
  }
}
