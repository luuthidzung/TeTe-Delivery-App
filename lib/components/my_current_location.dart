import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCurrentLocation extends StatelessWidget {
  const MyCurrentLocation({super.key});

  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
          title: const Text("Your Location"),
          content: const TextField(
            decoration: InputDecoration(hintText: "Search address.."),
          ),
          actions: [
            //cancel
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            //save
            MaterialButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Save'),
            )
          ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Delive now",
              style: TextStyle(
                color: Colors.grey,
              )),
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: const Row(
              children: [
                Text("The Emeral My Dinh",
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 140, 132),
                      fontWeight: FontWeight.bold,
                    )),

                //dropdown menu
                Icon(Icons.keyboard_arrow_down_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
