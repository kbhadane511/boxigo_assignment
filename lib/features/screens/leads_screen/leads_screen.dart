import 'package:boxio_assignment/features/screens/new_tab/new_tab_screen_content.dart';
import 'package:boxio_assignment/features/screens/leads_screen/widgets/applogo_and_title.dart';
import 'package:boxio_assignment/features/screens/leads_screen/widgets/notification_icon.dart';
import 'package:boxio_assignment/features/screens/leads_screen/widgets/search_button.dart';
import 'package:boxio_assignment/features/screens/leads_screen/widgets/tab_content.dart';
import 'package:flutter/material.dart';

class LeadsScreen extends StatelessWidget {
  const LeadsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 6, // Number of tabs
      child: Scaffold(
        appBar: AppBar(

          backgroundColor: Colors.white,
          elevation: 1,

          title: const CApplogoAndTitle(),

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
              Tab(text: 'All'),
              Tab(text: 'New'),
              Tab(text: 'Follow Up'),
              Tab(text: 'Booked'),
              Tab(text: 'In tra..'),
              Tab(text: 'Xyz'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            TabContent(content: 'Welcome to the Home Tab!'),
            NewTabScreenContent(),
            TabContent(content: 'This is your Profile Tab.'),
            TabContent(content: 'Adjust your Settings here.'),
            TabContent(content: 'Welcome to the Home Tab!'),
            TabContent(content: 'This is your Profile Tab.'),
          ],
        ),
      ),
    );
  }
}


