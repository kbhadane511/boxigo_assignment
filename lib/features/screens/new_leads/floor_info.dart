
import 'package:flutter/material.dart';

class FloorInfo extends StatelessWidget {
  const FloorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          title: Text('House Details'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: HouseDetails(),
        ),
      ),
    );
  }
}

class HouseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: Text(
            'Existing house details',
            style: TextStyle(
              color: Colors.orange[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.grey[200],
          children: [
            ListTile(
              title: Text('Floor No.'),
              trailing: Text(
                '10',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Elevator Available'),
              trailing: Text(
                'Yes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Packing Required'),
              trailing: Text(
                'Yes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Distance from door to truck'),
              trailing: Text(
                '20 mtrs',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                'Additional Information',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Dog is available so please call once you reach'),
            ),
          ],
        ),
        SizedBox(height: 16),
        ExpansionTile(
          title: Text(
            'New house details',
            style: TextStyle(
              color: Colors.orange[600],
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.grey[200],
          children: [
            ListTile(
              title: Text('Floor No.'),
              trailing: Text(
                '0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Elevator Available'),
              trailing: Text(
                'No',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Unpacking Required'),
              trailing: Text(
                'Yes',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text('Distance from door to truck'),
              trailing: Text(
                '50 mtrs',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: Text(
                'Additional Information',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text('Dog is available so please call once you reach'),
            ),
          ],
        ),
      ],
    );
  }
}