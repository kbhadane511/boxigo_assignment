import 'package:boxio_assignment/features/screens/leads_screen/leads_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationScreenController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          elevation: 0,
          height: 80.0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index){
            controller.selectedIndex.value = index;
          },
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.lamp), label: "Leads"),
            NavigationDestination(icon: Icon(Iconsax.task), label: "tasks"),
            NavigationDestination(icon: Icon(Iconsax.repeate_one), label: "Reports"),
            NavigationDestination(icon: Icon(Iconsax.more), label: "More"),
          ]
          ),
      ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationScreenController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens =[
    Container(color: Colors.deepPurple,),
    const LeadsScreen(),
    Container(color: Colors.purple,),
    Container(color: Colors.indigo,),
    Container(color: Colors.lightGreenAccent,),
  ];
}