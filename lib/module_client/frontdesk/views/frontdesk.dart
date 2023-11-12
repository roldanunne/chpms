import 'package:flutter/material.dart';

class FrontDeskPage extends StatelessWidget {
  const FrontDeskPage({super.key});

  @override
  Widget build(BuildContext context) {

    final formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        automaticallyImplyLeading: false,
        title: const Center(
          child: Text('Front Desk Operations'),
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
                        LocalCheckIn(),
                        LocalCheckOut(),
                        LocalBooking(),
                        LocalRooms(),
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
                                  LocalCheckIn(),
                                  LocalCheckOut(),
                                ],
                              ),

                              // next row

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  LocalBooking(),
                                  LocalRooms(),
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
                                LocalCheckIn(),
                                LocalCheckOut(),
                                LocalBooking(),
                                LocalRooms(),
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

class LocalBooking extends StatefulWidget {
  const LocalBooking({super.key});

  @override
  State<LocalBooking> createState() => _LocalBookingState();
}

class _LocalBookingState extends State<LocalBooking> {
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
                'Booking',
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

class LocalCheckIn extends StatefulWidget {
  const LocalCheckIn({super.key});

  @override
  State<LocalCheckIn> createState() => _LocalCheckInState();
}

class _LocalCheckInState extends State<LocalCheckIn> {
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
                'Check In',
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

class LocalCheckOut extends StatefulWidget {
  const LocalCheckOut({super.key});

  @override
  State<LocalCheckOut> createState() => _LocalCheckOutState();
}

class _LocalCheckOutState extends State<LocalCheckOut> {
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
                'Check Out',
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

class LocalRooms extends StatefulWidget {
  const LocalRooms({super.key});

  @override
  State<LocalRooms> createState() => _LocalRoomsState();
}

class _LocalRoomsState extends State<LocalRooms> {
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
                'Rooms',
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
