import 'package:di_container_app_example/ui/widget/calculator_service.dart';
import 'package:di_container_app_example/ui/widget/example_widget.dart';

class ExampleCalcViewModel implements ExampleViewModel {
  final CalculatorSevice calculatorSevice;

  const ExampleCalcViewModel({required this.calculatorSevice});

  @override
  void onPressMe() {
    final result =
        calculatorSevice.calculate(1, 2, CalculatorSeviceOperation.summ);
    print(result);
  }

  @override
  void onPressMe2() {
    print('777');
  }
}

class ExamplePPetViewModel implements ExampleViewModel {
  @override
  void onPressMe() {
    print('woof-woof');
  }

  @override
  void onPressMe2() {
    print('meow-meow');
  }
}
