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

    Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              const Text("Height"),
              Text("$height", style: kInputLableColor),
              Row(
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (height > 50) height--;
                        bmi = calculateBMI(
                          height: height,
                          weight: weight,
                        );
                      });
                      print(height);
                    },