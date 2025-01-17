import 'package:flutter/material.dart';

enum ColorSelection{
  deepPurple('Deep Purple',Colors.deepPurple),
  blue('Blue',Colors.blue);

  const ColorSelection(this.label,this.color);
  final String label;
  final Color color;
}