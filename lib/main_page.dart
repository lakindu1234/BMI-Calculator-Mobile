import 'package:bmicalculator/constants.dart';
import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {


  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Container(
      color: Colors.white,
      child: Column(
      children: [

        const SizedBox(height: 20),                // Gender Row

    // Height and Weight Row
    //////////////////////////////////////////////////////////////////////////////