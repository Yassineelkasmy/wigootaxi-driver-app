import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:wigootaxidriver/presentation/home/help/widgets/help_card.dart';
import 'package:wigootaxidriver/presentation/theme/colors.dart';
import 'package:wigootaxidriver/presentation/theme/spacings.dart';

class Reservation extends StatefulWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  late RiveAnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = SimpleAnimation('active');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: false,
        automaticallyImplyLeading: false,
        title: Text(
          "Réservations",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: kPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * .3,
              child: Center(
                child: RiveAnimation.asset(
                  'assets/animations/trajet.riv',
                  controllers: [_controller],
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buildHelpCard(
                icon: Icon(
                  Icons.calendar_month,
                  color: kPrimaryColor,
                ),
                text: 'Nouvelle Reservation',
                onPressed: () {}),
            SizedBox(
              height: 10,
            ),
            buildHelpCard(
                icon: Icon(
                  Icons.history,
                  color: kPrimaryColor,
                ),
                text: 'Mes Reservations',
                onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
