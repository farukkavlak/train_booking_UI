import 'dart:ui';
import 'package:flutter/material.dart';

class Category {
  final String image;
  final Color color;
  final String title;
  final int functionCode;
  const Category(
      {required this.image,
      required this.color,
      required this.title,
      required this.functionCode});
}
