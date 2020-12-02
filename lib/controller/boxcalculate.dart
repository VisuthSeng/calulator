import 'package:get/get.dart';

class Boxcalculate extends GetxController {
  var totalValue = 0;
  var grade = '';

  void sumValue(int subject1, int subject2, int subject3, int subject4) {
    totalValue = subject1 + subject2 + subject3 + subject4;

    update();
    if (totalValue >= 400) {
      grade = "Grade A";
    } else if (totalValue >= 350) {
      grade = "Grade B";
    } else if (totalValue >= 300) {
      grade = "Grade C";
    } else if (totalValue >= 250) {
      grade = "Grade D";
    } else if (totalValue >= 200) {
      grade = "Grade E";
    } else
      grade = "Grade F";
  }
}
