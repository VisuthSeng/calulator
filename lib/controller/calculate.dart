import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorController extends GetxController {
  var nothing = '';
  var equation = "0";
  var result = '';
  var total;
// add number
  void getButtonNumber(String value) {
    print('getnumber');
    nothing += value;
    update();
  }
//button equal

  void resultshow() {
    Parser parser = Parser();
    Expression expression = parser.parse(nothing);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    result = eval.toString();
    update();
  }

//button C
  void setzero(String value) {
    nothing = "";
    result = "";
    update();
  }
}
