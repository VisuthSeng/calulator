import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get_x_state_demo_1/controller/buttoncalculate.dart';
import 'package:get_x_state_demo_1/controller/calculate.dart';

class PageSetec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "SETEC CALCULATE GRADE ",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
        ),
      ),
      body: GetBuilder<CalculatorController>(
        builder: (_) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              child: Column(
                children: [
                  Container(
                    color: Colors.black,
                    alignment: Alignment.centerRight,
                    child: Column(
                      children: [
                        Text(
                          _.nothing,
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                        Text(
                          _.result,
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 50),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Divider(),
                  ),
                  Container(
                    color: Colors.black,
                    child: Row(
                      children: [
                        Buttoncalculate(
                          nb: "A/C",
                          numberbox: Colors.grey,
                          numbercolor: Colors.black,
                          outputnb: () {
                            _.getButtonNumber("A/C");
                          },
                        ),
                        Buttoncalculate(
                            nb: "+/-",
                            numberbox: Colors.grey,
                            numbercolor: Colors.black,
                            outputnb: () {
                              _.getButtonNumber('+/-');
                            }),
                        Buttoncalculate(
                            nb: "%",
                            numberbox: Colors.grey,
                            numbercolor: Colors.black,
                            outputnb: () {
                              _.getButtonNumber('%');
                            }),
                        Buttoncalculate(
                            nb: "/",
                            numberbox: Colors.orange,
                            numbercolor: Colors.white,
                            outputnb: () {
                              _.getButtonNumber('/');
                            }),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Buttoncalculate(
                          nb: "7",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber('7');
                          }),
                      Buttoncalculate(
                          nb: "8",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber('8');
                          }),
                      Buttoncalculate(
                          nb: "9",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber('9');
                          }),
                      Buttoncalculate(
                          nb: "X",
                          numberbox: Colors.orange,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber('*');
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      Buttoncalculate(
                          nb: "4",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber('4');
                          }),
                      Buttoncalculate(
                          nb: "5",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber('5');
                          }),
                      Buttoncalculate(
                          nb: "6",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber('6');
                          }),
                      Buttoncalculate(
                          nb: "-",
                          numberbox: Colors.orange,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber('-');
                          }),
                    ],
                  ),
                  Row(
                    children: [
                      Buttoncalculate(
                          nb: "1",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber("1");
                          }),
                      Buttoncalculate(
                          nb: "2",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber("2");
                          }),
                      Buttoncalculate(
                          nb: "3",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber("3");
                          }),
                      Buttoncalculate(
                          nb: "+",
                          numberbox: Colors.orange,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber("+");
                          }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Buttoncalculate(
                          nb: "0",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber("0");
                          }),
                      Buttoncalculate(
                          nb: ".",
                          numberbox: Colors.grey,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.getButtonNumber(".");
                          }),
                      Buttoncalculate(
                          nb: "C",
                          numberbox: Colors.orange,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.setzero('');
                          }),
                      Buttoncalculate(
                          nb: "=",
                          numberbox: Colors.orange,
                          numbercolor: Colors.white,
                          outputnb: () {
                            _.resultshow();
                          }),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
