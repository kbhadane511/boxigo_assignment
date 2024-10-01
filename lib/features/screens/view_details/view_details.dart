import 'package:flutter/material.dart';

class NewLeadsPage extends StatefulWidget {
  @override
  _NewLeadsPageState createState() => _NewLeadsPageState();
}

class _NewLeadsPageState extends State<NewLeadsPage> {
  List<ItemData> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('New Leads'),
        actions: [
          Stack(
            children: [
              Icon(Icons.notifications),
              Positioned(
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(1),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                  child: Text(
                    '99',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          SizedBox(width: 16),
          Icon(Icons.search),
          SizedBox(width: 16),
        ],
      ),
      body: Column(
        children: [
          TabBarSection(),
          Expanded(
            child: ListView(
              children: [
                ExpansionPanelList(
                  expansionCallback: (int index, bool isExpanded) {
                    setState(() {
                      _data[index].isExpanded = !isExpanded;
                    });
                  },
                  children: _data.map<ExpansionPanel>((ItemData item) {
                    return ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          title: Text(
                            item.headerValue,
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      },
                      body: Column(
                        children: item.expandedValue,
                      ),
                      isExpanded: item.isExpanded,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.filter_list), label: 'Leads'),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Tasks'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Reports'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        currentIndex: 1,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}

class TabBarSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TabBarItem(title: 'Items', isSelected: true),
          TabBarItem(title: 'Floor Info', isSelected: false),
          TabBarItem(title: 'Send Quote', isSelected: false),
        ],
      ),
    );
  }
}

class TabBarItem extends StatelessWidget {
  final String title;
  final bool isSelected;

  TabBarItem({required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.orange : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
        if (isSelected)
          Container(
            margin: EdgeInsets.only(top: 4),
            height: 2,
            width: 20,
            color: Colors.orange,
          ),
      ],
    );
  }
}

class Item extends StatelessWidget {
  final IconData icon;
  final String name;
  final String details;
  final int quantity;

  Item({required this.icon, required this.name, required this.details, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(
                    details,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
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

class CustomItem extends StatelessWidget {
  final String name;
  final String description;
  final String dimensions;

  CustomItem({required this.name, required this.description, required this.dimensions});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(description, style: TextStyle(color: Colors.grey, fontSize: 12)),
          SizedBox(height: 4),
          Text(dimensions, style: TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class ItemData {
  ItemData({
    required this.headerValue,
    required this.expandedValue,
    this.isExpanded = false,
  });

  String headerValue;
  List<Widget> expandedValue;
  bool isExpanded;
}

List<ItemData> generateItems() {
  return [
    ItemData(
      headerValue: 'Living Room',
      expandedValue: [
        Item(icon: Icons.weekend, name: 'L Type Sofa', details: 'Small | Leather', quantity: 1),
        Item(icon: Icons.event_seat, name: 'Single Seater Sofa', details: 'Large | Leather', quantity: 1),
        Item(icon: Icons.table_chart, name: 'Tea Table', details: 'Medium | Wooden', quantity: 1),
        Item(icon: Icons.tv, name: 'Entertainment Unit', details: 'Medium | Wooden', quantity: 1),
        Item(icon: Icons.chair, name: 'Wooden Chairs', details: 'Small', quantity: 2),
        Item(icon: Icons.weekend, name: 'Swing', details: 'Large | Wooden', quantity: 1),
        Item(icon: Icons.chair_alt, name: 'Foldable Chairs', details: 'Small | Steel', quantity: 4),
      ],
    ),
    ItemData(
      headerValue: 'Bed Room',
      expandedValue: [],
    ),
    ItemData(
      headerValue: 'Custom Items',
      expandedValue: [
        CustomItem(
          name: 'Antique Clock',
          description: '200 year old British Period wooden perpetual clock, very unique and rare clock',
          dimensions: 'L: 6 ft  W: 6 ft  H: 6 ft',
        ),
        CustomItem(
          name: 'Antique Clock',
          description: '200 year old British Period wooden perpetual clock, very unique and rare clock',
          dimensions: 'L: 6 ft  W: 6 ft  H: 6 ft',
        ),
      ],
    ),
  ];
}