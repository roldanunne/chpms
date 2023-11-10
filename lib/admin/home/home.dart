import 'package:chpms_v2_1/admin/home/dashboard.dart';
import 'package:chpms_v2_1/admin/room_mgmt/room_mgmt.dart';
import 'package:chpms_v2_1/admin/user_mgmt/user_mgmt_dashboard.dart';
import 'package:chpms_v2_1/authentication/login_screen.dart';
import 'package:chpms_v2_1/modules/front_desk/front_desk.dart';
import 'package:chpms_v2_1/modules/maintenance/maintenance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

int _selectedIndex = 0;

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHome();
}

class _AdminHome extends State<AdminHome> {
  final List<Widget> _screens = [
    const Dashboard(),
    const FrontDesk(),
    const Maintenance(),
    const ManageRooms(),
    const UserManage(),
  ];

  @override
  Widget build(BuildContext context) {
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
            onPressed: () => Get.to(
              const LoginScreen(),
            ),
            icon: const Icon(Icons.power_settings_new_rounded),
          )
        ],
        title: const Center(
          child: Text('Hotel Property Management System'),
        ),
      ),
      body: Row(
        children: [
          if (MediaQuery.of(context).size.width >= 1000)
            NavigationRail(
                onDestinationSelected: (int index) => setState(
                      () {
                        _selectedIndex = index;
                      },
                    ),
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
                selectedIndex: _selectedIndex),
          Expanded(child: _screens[_selectedIndex]),
        ],
      ),
      bottomNavigationBar: (MediaQuery.of(context).size.width < 1000)
          ? BottomNavigationBar(
              currentIndex: _selectedIndex,
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.indigoAccent,
              onTap: (int index) => setState(
                () {
                  _selectedIndex = index;
                },
              ),
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
