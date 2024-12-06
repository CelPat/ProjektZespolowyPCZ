import 'package:flutter/material.dart';

class bottomNavigationBar extends StatelessWidget {
  const bottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
      icon: Icon(Icons.home_outlined), label: 'Home'),
              BottomNavigationBarItem(
      icon: Icon(Icons.person_2_outlined), label: 'Profile')
            ]);
  }
}
