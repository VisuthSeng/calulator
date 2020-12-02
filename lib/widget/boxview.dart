import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get_x_state_demo_1/controller/boxbutton.dart';
import 'package:get_x_state_demo_1/controller/boxcalculate.dart';

class Boxview extends StatelessWidget {
  final Boxcalculate bc = Get.put(Boxcalculate());
  final TextEditingController tc = TextEditingController();
  final TextEditingController tc1 = TextEditingController();
  final TextEditingController tc2 = TextEditingController();
  final TextEditingController tc3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'SETEC GRADE',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
      ),
      body: GetBuilder<Boxcalculate>(builder: (boxcontroller) {
        return Container(
          child: Column(
            children: [
              TextField(
                controller: tc,
                decoration: InputDecoration(labelText: "Enter Your Score"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: tc1,
                decoration: InputDecoration(labelText: "Enter Your Score"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: tc2,
                decoration: InputDecoration(labelText: "Enter Your Score"),
                keyboardType: TextInputType.number,
              ),
              TextField(
                controller: tc3,
                decoration: InputDecoration(labelText: "Enter Your Score"),
                keyboardType: TextInputType.number,
              ),
              RaisedButton(
                color: Colors.green,
                child: Text('RESULT'),
                onPressed: () => boxcontroller.sumValue(
                    int.parse(tc.text),
                    int.parse(tc1.text),
                    int.parse(tc2.text),
                    int.parse(tc3.text)),
              ),
              RaisedButton(
                child: Text(boxcontroller.totalValue.toString()),
                onPressed: () {},
              ),
              RaisedButton(
                child: Text(boxcontroller.grade.toString()),
                onPressed: () {},
              ),
            ],
          ),
        );
      }),
    );
  }
}
