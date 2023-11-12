import 'package:flutter/material.dart';

class MaintenancePage extends StatefulWidget {
  const MaintenancePage({super.key});

  @override
  State<MaintenancePage> createState() => _MaintenancePageState();
}

class _MaintenancePageState extends State<MaintenancePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Housekeeping & Maintenance'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      body: Container(
        color: Colors.lightBlue[100],
        alignment: Alignment.center,
        child: const Text(
          'Housekeeping and Maintenance',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 40,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'New Task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
