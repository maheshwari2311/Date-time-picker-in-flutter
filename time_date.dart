import 'package:flutter/material.dart';

class MyDate extends StatefulWidget {
  const MyDate({super.key});

  @override
  State<MyDate> createState() => _MyDateState();
}

class _MyDateState extends State<MyDate> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          "Date picker",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Current time ",
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? datepicked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2030),
                );
                if (datepicked != null) {
                  print(
                      'Date selected ${datepicked.month}/${datepicked.year}/${datepicked.day}');
                }
              },
              child: const Text(
                "Pick me ",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            FilledButton(
              onPressed: () async {
                TimeOfDay? timepick = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (timepick != null) {
                  print('Birth time : ${timepick.hour}:${timepick.minute}');
                }
              },
              child: const Text(
                "picker",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
