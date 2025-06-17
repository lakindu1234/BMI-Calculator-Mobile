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

                    child: const Icon(Icons.remove, size: 50),
                  ),
                  const SizedBox(width: 50),
                  FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        if (height < 250) height++;
                        bmi = calculateBMI(
                          height: height,
                          weight: weight,
                        );
                      });
                      print(height);
                    },
                    child: const Icon(Icons.add, size: 50),
                  ),
                ],
              ),
            ],
          ),
        ),

    const Spacer(),


    Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
        const Text("Weight"),
        Text("$weight", style: kInputLableColor),
        Row(
      children: [
        FloatingActionButton(
          onPressed: () {
            setState(() {
              if (weight > 2) weight--;
              bmi = calculateBMI(
                height: height,
                weight: weight,
              );
            });
            print(weight);
          },
          child: const Icon(Icons.remove, size: 50),
        ),
        const SizedBox(width: 50),

        FloatingActionButton(
          onPressed: () {
            setState(() {
            if (weight < 500) weight++;
            bmi = calculateBMI(
              height: height,
              weight: weight,
              );
            });
            print(weight);
          },

          child: const Icon(Icons.add, size: 50),
          ),
        ],
      ),
    ],
    ),
    ),
    ],
    ),

    const SizedBox(height: 80),

    Row(
      children: [
        GestureDetector(
          onTap: () {
            print("Male");
            setState(() {
              gender = "M";
            });
          },
          child: Container(
            height: 250,
            width: 185,
            decoration: BoxDecoration(
              color:
              gender == 'M'
                  ? Colors.black.withAlpha(100)
                  : Colors.blueAccent.withAlpha(50),
              borderRadius: BorderRadius.circular(100),
              ),

              padding: EdgeInsets.all(8.0),
              child: Column(
                children: [Icon(Icons.male, size: 150), Text("Male")],
              ),
          ),
        ),

        const Spacer(),

        GestureDetector(
          onTap: () {
            print("Female");
            setState(() {
              gender = "F";
            });
          },

          child: Container(
            height: 250,
            width: 185,
            decoration: BoxDecoration(
              color:
              gender == 'F'
                  ? Colors.black.withAlpha(100)
                  : Colors.blueAccent.withAlpha(50),
              borderRadius: BorderRadius.circular(100),
            ),

            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Icon(Icons.female, size: 150),
                Text("Female"),
              ],
            ),
          ),
        ),
      ],
    ),

    const SizedBox(height: 50),

        Column(
          children: [
            const Text("BMI"),
            Text(
              bmi.toStringAsFixed(2),
              style: kInputLableColor.copyWith(
                color: kOutputTextcolor,
                fontSize: 85,
              ),
            ),

            Text(getResult(bmi)),
          ],
        ),

        ],
        ),
        ),
        ),
        ),
    );
  }



double calculateBMI({required int height, required int weight}) {
  return (weight / (height * height)) * 10000;
}


String getResult(bmiValue) {
  if (bmiValue >= 25) {
    return 'OverWeight';
  } else if (bmiValue > 18.5) {
    return 'Normal';
  } else {
    return 'UnderWeight';
  }
  }
}
