import 'package:flutter/material.dart';

class MoneyCountAnimation extends StatefulWidget {
  final int targetAmount;

  MoneyCountAnimation({required this.targetAmount});

  @override
  _MoneyCountAnimationState createState() => _MoneyCountAnimationState();
}

class _MoneyCountAnimationState extends State<MoneyCountAnimation> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 2),
      tween: IntTween(
        begin: 0,
        end: widget.targetAmount,
      ),
      builder: (BuildContext context, int value, Widget? child) {
        String formattedValue = '${value}';
        return Text(
          formattedValue,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        );
      },
    );
  }
}


class MoneyCountAnimationWhite extends StatefulWidget {
  final int targetAmount;

  MoneyCountAnimationWhite({required this.targetAmount});

  @override
  _MoneyCountAnimationWhiteState createState() => _MoneyCountAnimationWhiteState();
}

class _MoneyCountAnimationWhiteState extends State<MoneyCountAnimationWhite> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      duration: Duration(seconds: 2),
      tween: IntTween(
        begin: 0,
        end: widget.targetAmount,
      ),
      builder: (BuildContext context, int value, Widget? child) {
        String formattedValue = "${value}";
        return Text(
          formattedValue,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        );
      },
    );
  }
}