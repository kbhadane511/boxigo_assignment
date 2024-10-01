import 'package:boxio_assignment/features/screens/new_leads/floor_info.dart';
import 'package:boxio_assignment/features/screens/new_leads/items_screen.dart';
import 'package:boxio_assignment/features/screens/leads_screen/widgets/notification_icon.dart';
import 'package:boxio_assignment/features/screens/leads_screen/widgets/search_button.dart';
import 'package:boxio_assignment/features/screens/leads_screen/widgets/tab_content.dart';
import 'package:flutter/material.dart';

class NewLeads extends StatelessWidget {
  const NewLeads({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white,
          elevation: 1,

          title: const Text("New Leads"),

          actions: const [
            NotificationIcon(),
            SearchButton(),
          ],

          bottom: const TabBar(
            indicatorColor: Colors.red,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.red,
            dividerColor: Colors.grey,
            isScrollable: true, // Enable scrollable tabs
            tabs: [
              Tab(text: 'Items'),
              Tab(text: 'Floor Info'),
              Tab(text: 'Send Quote'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ItemsScreen(),
            FloorInfo(),
            TabContent(content: 'This is your Profile Tab.'),
          ],
        ),
      ),
    );
  }
}


