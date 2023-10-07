// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, use_key_in_widget_constructors, must_be_immutable, unused_import, unnecessary_new

import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:math_expressions/math_expressions.dart';
import 'Components.dart';

class home_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home_page_state();
  }
}

class home_page_state extends State<home_page> {
  var userinput = " ";
  var result = " ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [],
            ),
          ),
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Enter the numbers : \n " + userinput.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.005,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.06,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Text(
                  "Result = " + result.toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                children: [
                  MyButton(
                    title: "AC",
                    color: Colors.grey,
                    onpress: () {
                      userinput = "";
                      result = "";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "+/-",
                    color: Colors.grey,
                    onpress: () {
                      userinput += "-";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "%",
                    color: Colors.grey,
                    onpress: () {
                      userinput += "%";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "/",
                    color: Colors.orange,
                    onpress: () {
                      userinput += "/";
                      setState(() {});
                    },
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  MyButton(
                    title: "7",
                    color: Colors.black,
                    onpress: () {
                      userinput += "7";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "8",
                    color: Colors.black,
                    onpress: () {
                      userinput += "8";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "9",
                    color: Colors.black,
                    onpress: () {
                      userinput += "9";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "*",
                    color: Colors.orange,
                    onpress: () {
                      userinput += "*";
                      setState(() {});
                    },
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  MyButton(
                    title: "4",
                    color: Colors.black,
                    onpress: () {
                      userinput += "4";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "5",
                    color: Colors.black,
                    onpress: () {
                      userinput += "5";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "6",
                    color: Colors.black,
                    onpress: () {
                      userinput += "6";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "-",
                    color: Colors.orange,
                    onpress: () {
                      userinput += "-";
                      setState(() {});
                    },
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  MyButton(
                    title: "1",
                    color: Colors.black,
                    onpress: () {
                      userinput += "1";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "2",
                    color: Colors.black,
                    onpress: () {
                      userinput += "2";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "3",
                    color: Colors.black,
                    onpress: () {
                      userinput += "3";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "+",
                    color: Colors.orange,
                    onpress: () {
                      userinput += "+";
                      setState(() {});
                    },
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Row(
                children: [
                  AnotherButton(
                    title: "0",
                    color: Colors.black,
                    onpress: () {
                      userinput += "0";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: ".",
                    color: Colors.black,
                    onpress: () {
                      userinput += ".";
                      setState(() {});
                    },
                  ),
                  MyButton(
                    title: "=",
                    color: Colors.orange,
                    onpress: () {
                      equalpress();
                      setState(() {});
                    },
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
            ],
          ),
        ],
      ),
    );
  }

  void equalpress() {
    Parser p = new Parser();
    Expression expression = p.parse(userinput);

    ContextModel contextModel = ContextModel();

    double eval = expression.evaluate(EvaluationType.REAL, contextModel);

    result = eval.toString();
  }
}
