import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes.dart';
import '../../../module_client/frontdesk/views/frontdesk.dart';
import '../../../module_client/maintenance/views/maintenance.dart';
import '../../home/views/home.dart';
import '../../room/views/room.dart';
import '../../user/views/user.dart';
import '../controllers/dashboard_ctrl.dart';


class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
     DashboardController ctrl = Get.find(); 

    final List<Widget> _screens = [
      const HomePage(),
      const FrontDeskPage(),
      const MaintenancePage(),
      const RoomPage(),
      const UserPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[900],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("images/PhilCST.png"),
        ),
        actions: [
          IconButton(
            tooltip: 'Logout',
            onPressed: () => Get.toNamed(Routes.LOGIN),
            icon: const Icon(Icons.power_settings_new_rounded),
          )
        ],
        title: const Center(
          child: Text('Hotel Property Management System'),
        ),
      ),
      body: Obx(() => Row(
          children: [
            if (MediaQuery.of(context).size.width >= 1000)
              NavigationRail(
                  destinations: const [
                    NavigationRailDestination(
                      icon: Icon(Icons.dashboard),
                      label: Text('Dashboard'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.laptop),
                      label: Text('Front Desk'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.chair),
                      label: Text('Housekeeping & Maintenance'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.room_preferences),
                      label: Text('Room Management'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.person),
                      label: Text('User Management'),
                    ),
                  ],
                  labelType: NavigationRailLabelType.all,
                  selectedLabelTextStyle: const TextStyle(
                    color: Colors.teal,
                  ),
                  unselectedLabelTextStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  onDestinationSelected: (int index) {
                      ctrl.selectedNavIndex.value = index;
                  },
                  selectedIndex: ctrl.selectedNavIndex.value),
            Expanded(child: _screens[ctrl.selectedNavIndex.value]),
          ],
        ),
      ),
      bottomNavigationBar: (MediaQuery.of(context).size.width < 1000)
          ? BottomNavigationBar(
              currentIndex: ctrl.selectedNavIndex.value,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.indigoAccent,
              onTap: (int index) => ctrl.selectedNavIndex.value = index,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.dashboard), label: 'Dashboard'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.laptop), label: 'Front Desk'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.chair),
                    label: 'Housekeeping & Maintenance'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.room_preferences),
                    label: 'Room Managment'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'User Management'),
              ],
            )
          : null,
    );
  }
}
