import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
   MyListView({super.key});

  @override
  State<MyListView> createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  int inthemiddle = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollUpdateNotification>(
      onNotification: (notification) {
        // Calculate the index of the middle widget
        int itemCount = 40; // Change this to the actual number of widgets in your list
        double middlePosition = notification.metrics.pixels + notification.metrics.viewportDimension / 2;
        int middleIndex = (middlePosition / 50).round(); // Assuming each widget has a height of 50, adjust accordingly

        // Print the index of the middle widget
        print('Middle Widget Index: $middleIndex');
        inthemiddle = middleIndex;
        setState(() {
          
        });
        return true;
      },
      child: Column(
        children: [
          SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 40, // Change this to the actual number of widgets
              itemBuilder: (context, index) {
                // Replace this with your widget implementation
                return  Center(child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(' $index')));
              },
            ),
          ),
          Text(inthemiddle.toString()),
        ],
      ),
    ),
    );
     
  }
}