import 'package:flutter/material.dart';

class ManageRooms extends StatefulWidget {
  const ManageRooms({super.key});

  @override
  State<ManageRooms> createState() => _ManageRoomsState();
}

class _ManageRoomsState extends State<ManageRooms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Room Management'),
        ),
      ),
      body: LayoutBuilder(builder: (context, cons) {
        return SingleChildScrollView(
          child: Container(
            height: cons.maxHeight,
            color: Colors.lightBlue[100],
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LocalRoomCreate(),
                LocalCategoryManage(),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class LocalRoomCreate extends StatefulWidget {
  const LocalRoomCreate({super.key});

  @override
  State<LocalRoomCreate> createState() => _LocalRoomCreateState();
}

class _LocalRoomCreateState extends State<LocalRoomCreate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: const BorderRadius.all(
            Radius.circular(40),
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black26,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(30),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 28,
              ),
              child: Text(
                'Manage Rooms',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LocalCategoryManage extends StatefulWidget {
  const LocalCategoryManage({super.key});

  @override
  State<LocalCategoryManage> createState() => _LocalCategoryManageState();
}

class _LocalCategoryManageState extends State<LocalCategoryManage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        height: 250,
        width: 350,
        decoration: BoxDecoration(
          color: Colors.indigo[900],
          borderRadius: const BorderRadius.all(
            Radius.circular(40),
          ),
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              color: Colors.black26,
              offset: Offset(0, -3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(30),
            child: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 28,
              ),
              child: Text(
                'Manage Room Categories',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
