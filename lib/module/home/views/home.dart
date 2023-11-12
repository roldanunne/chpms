import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text(
            'Dashboard',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, cons) {
          return SingleChildScrollView(
            child: Container(
              height: cons.maxHeight,
              color: Colors.lightBlue[100],
              child: (MediaQuery.of(context).size.width >= 1750)
                  ? const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LocalFrontDesk(),
                        LocalHKnMgmt(),
                        LocalRoomMgmt(),
                        LocalUserMgmt(),
                      ],
                    )
                  : (MediaQuery.of(context).size.width >= 780)
                      ? const SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  LocalFrontDesk(),
                                  LocalHKnMgmt(),
                                ],
                              ),

                              // next row

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  LocalRoomMgmt(),

                                  // user management

                                  LocalUserMgmt(),
                                ],
                              ),
                            ],
                          ),
                        )

                      // screen format for mobile

                      : SingleChildScrollView(
                          child: SizedBox(
                            width: cons.maxWidth,
                            child: const Column(
                              children: [
                                LocalFrontDesk(),
                                LocalHKnMgmt(),
                                LocalRoomMgmt(),
                                LocalUserMgmt(),
                              ],
                            ),
                          ),
                        ),
            ),
          );
        },
      ),
    );
  }
}

// Item widgets

// front desk
class LocalFrontDesk extends StatefulWidget {
  const LocalFrontDesk({super.key});

  @override
  State<LocalFrontDesk> createState() => _LocalFrontDeskState();
}

class _LocalFrontDeskState extends State<LocalFrontDesk> {
  @override
  Widget build(BuildContext context) {
    return // front desk

        Padding(
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
                'Front Desk ',
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

// housekeeping and maintenance
class LocalHKnMgmt extends StatefulWidget {
  const LocalHKnMgmt({super.key});

  @override
  State<LocalHKnMgmt> createState() => _LocalHKnMgmtState();
}

class _LocalHKnMgmtState extends State<LocalHKnMgmt> {
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
                'Housekeeping and Maintenance',
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

// room management
class LocalRoomMgmt extends StatefulWidget {
  const LocalRoomMgmt({super.key});

  @override
  State<LocalRoomMgmt> createState() => _LocalRoomMgmtState();
}

class _LocalRoomMgmtState extends State<LocalRoomMgmt> {
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
                'Room Management',
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

// user management
class LocalUserMgmt extends StatefulWidget {
  const LocalUserMgmt({super.key});

  @override
  State<LocalUserMgmt> createState() => _LocalUserMgmtState();
}

class _LocalUserMgmtState extends State<LocalUserMgmt> {
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
                'User Mangement',
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
