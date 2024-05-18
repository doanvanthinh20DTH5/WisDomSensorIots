
import 'package:flutter/material.dart';


class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            NotificationTile(
              description: 'This is the description for notification 1.',
            ),
            NotificationTile(
              description: 'This is the description for notification 2.',
            ),
            SizedBox(height: 16),
            Text(
              'Yesterday',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            NotificationTile(
              description: 'This is the description for notification 3.',
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String description;

  NotificationTile({ required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(description),
          ],
        ),
      ),
    );
  }
}
