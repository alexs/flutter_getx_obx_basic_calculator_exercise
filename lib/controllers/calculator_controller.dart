import 'package:get/get.dart';

class CalculatorController extends GetxController {
  RxDouble result = 0.0.obs;
  RxDouble number1 = 0.0.obs;
  RxDouble number2 = 0.0.obs;
  RxString operatorSymb = "".obs;

  void suma() {
    result.value = number1.value + number2.value;
    operatorSymb.value = "+";
  }

  void resta() {
    result.value = number1.value - number2.value;
    operatorSymb.value = "-";
  }

  void multiplica() {
    result.value = number1.value * number2.value;
    operatorSymb.value = "*";
  }

  void divide() {
    if (number2.value != 0) result.value = number1.value / number2.value;
    operatorSymb.value = "/";
  }
}
