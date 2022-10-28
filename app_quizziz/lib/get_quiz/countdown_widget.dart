import 'dart:async';

import 'package:flutter/material.dart';

class CountDownWidget extends StatefulWidget {
  const CountDownWidget({super.key});

  @override
  State<CountDownWidget> createState() => _CountDownWidgetState();
}

class _CountDownWidgetState extends State<CountDownWidget> {
  int second = 4;
  Timer? timer;

  Future<void> startTimer() async {
    timer = Timer.periodic(const Duration(milliseconds: 1000), (_) {
      if (second > 0) {
        setState(() => second--);
      } else {
        timer?.cancel();
      }
    });
  }

  bool text = false;
  bool button = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Visibility(
          visible: text,
          child: Text('$second'),
        ),
        Visibility(
          visible: button,
          child: TextButton(
            child: Text('Start'),
            onPressed: () {
              button = false;
              text = true;
              startTimer();
            },
          ),
        ),
      ],
    );
  }
}
