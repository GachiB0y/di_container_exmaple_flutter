import 'package:di_container_app_example/ui/widget/summator.dart';

enum CalculatorSeviceOperation { summ }

class CalculatorSevice {
  final Summator summator;

  const CalculatorSevice({required this.summator});

  int calculate(int a, int b, CalculatorSeviceOperation operation) {
    if (operation == CalculatorSeviceOperation.summ) {
      return summator.sum(a, b);
    } else {
      return 0;
    }
  }
}
