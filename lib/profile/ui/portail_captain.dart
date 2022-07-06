import 'package:flutter/material.dart';

class PortailCaptain extends StatelessWidget {
  const PortailCaptain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Row(
              children: [
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.person_outlined),
                    label: Text('Profil')),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.car_rental),
                    label: Text('Courses')),
              ],
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text(
                "Portail Captain",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Abdesselam Ferroun",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios),
                  Text(
                    "Cycle en cours",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward_ios),
                ],
              )
            ],
          ),
        ));
  }
}
