import 'package:flutter/material.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                ExpandableSection(
                  title: 'Living Room',
                  content: LivingRoomContent(),
                ),
                ExpandableSection(
                  title: 'Bed Room',
                  content: Container(), // Add Bed Room content here
                ),
                ExpandableSection(
                  title: 'Custom Items',
                  content: CustomItemsContent(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ExpandableSection extends StatefulWidget {
  final String title;
  final Widget content;

  ExpandableSection({required this.title, required this.content});

  @override
  _ExpandableSectionState createState() => _ExpandableSectionState();
}

class _ExpandableSectionState extends State<ExpandableSection> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: Container(
            color: Colors.grey[200],
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    color: Colors.orange[600],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Icon(
                  isExpanded ? Icons.expand_less : Icons.expand_more,
                ),
              ],
            ),
          ),
        ),
        if (isExpanded) widget.content,
      ],
    );
  }
}

class LivingRoomContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Furniture',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          FurnitureItem(
            icon: Icons.weekend,
            title: 'L Type Sofa',
            subtitle: 'Small | Leather',
            quantity: 1,
          ),
          FurnitureItem(
            icon: Icons.event_seat,
            title: 'Single Seater Sofa',
            subtitle: 'Large | Leather',
            quantity: 1,
          ),
          FurnitureItem(
            icon: Icons.table_chart,
            title: 'Tea Table',
            subtitle: 'Medium | Wooden',
            quantity: 1,
          ),
          FurnitureItem(
            icon: Icons.tv,
            title: 'Entertainment Unit',
            subtitle: 'Medium | Wooden',
            quantity: 1,
          ),
          FurnitureItem(
            icon: Icons.chair,
            title: 'Wooden Chairs',
            subtitle: 'Small',
            quantity: 2,
          ),
          FurnitureItem(
            icon: Icons.abc,
            title: 'Swing',
            subtitle: 'Large | Wooden',
            quantity: 1,
          ),
          FurnitureItem(
            icon: Icons.chair_alt,
            title: 'Foldable Chairs',
            subtitle: 'Small | Steel',
            quantity: 4,
          ),
        ],
      ),
    );
  }
}

class FurnitureItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final int quantity;

  FurnitureItem({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title),
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Text(quantity.toString()),
        ],
      ),
    );
  }
}

class CustomItemsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomItem(
            title: 'Antique Clock',
            description:
                '200 year old British Period wooden perpetual clock, very unique and rare clock',
            dimensions: 'L: 6 ft   W: 6 ft   H: 6 ft',
          ),
          CustomItem(
            title: 'Antique Clock',
            description:
                '200 year old British Period wooden perpetual clock, very unique and rare clock',
            dimensions: 'L: 6 ft   W: 6 ft   H: 6 ft',
          ),
        ],
      ),
    );
  }
}

class CustomItem extends StatelessWidget {
  final String title;
  final String description;
  final String dimensions;

  CustomItem({
    required this.title,
    required this.description,
    required this.dimensions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4.0),
          Text(
            description,
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 4.0),
          Text(
            dimensions,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}