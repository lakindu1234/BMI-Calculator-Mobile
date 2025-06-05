import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int height = 150;
  int weight = 70;

  String gender = '';

  late double bmi = calculateBMI(height: height, weight: weight);
