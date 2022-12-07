import 'package:flutter/material.dart';

class Model {
  final int id;
  final IconData imagePath;
  final String name;

  Model({
    required this.id,
    required this.imagePath,
    required this.name,
  });
}

List<Model> navBtn = [
  Model(id: 0, imagePath: Icons.home, name: 'Home'),
  Model(id: 1, imagePath: Icons.search, name: 'Search'),
  Model(id: 2, imagePath: Icons.star, name: 'Like'),
  Model(id: 3, imagePath: Icons.alarm, name: 'notification'),
  Model(id: 4, imagePath: Icons.person, name: 'Profile'),
];
