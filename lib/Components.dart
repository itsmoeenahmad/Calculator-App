//I USE THE COMPONEENTS BECAUSE IT HELPS TO REDUCE THE APP CODE.

import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const MyButton(
      {Key? key,
      required this.title,
      required this.color,
      required this.onpress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.08,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}

class AnotherButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onpress;
  const AnotherButton(
      {Key? key,
      required this.title,
      required this.color,
      required this.onpress})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: InkWell(
        onTap: onpress,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.1,
          width: MediaQuery.of(context).size.width * 0.434,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(30),
            color: color,
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
