import 'package:flutter/material.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/image_strings.dart';
import 'package:projekt_zespolowy_pcz/utils/constants/sizes.dart';

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
                const SizedBox(
                  height: ZenSizes.spaceBetweenSections,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('medytacje'),
                ),
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('centrum pomocy'),
                ),
                const SizedBox(
                  height: ZenSizes.spaceBetweenItems,
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
