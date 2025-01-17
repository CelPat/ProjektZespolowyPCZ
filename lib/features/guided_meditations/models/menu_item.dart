import 'package:flutter/material.dart';

class MenuItem {
  final String image;
  final String description;
  final VoidCallback onTap;

  MenuItem({
    required this.image,
    required this.description,
    required this.onTap,
  });
}
