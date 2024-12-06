import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(ZenImages.appLogo, fit: BoxFit.cover),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('medytacje'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('centrum pomocy'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('centrum wiedzy'),
                ),
              ]),
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile')
        ]));
  }
}
