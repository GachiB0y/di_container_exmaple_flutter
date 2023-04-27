import 'package:di_container_app_example/main.dart';
import 'package:di_container_app_example/main_navigation.dart';
import 'package:di_container_app_example/ui/widget/calculator_service.dart';
import 'package:di_container_app_example/ui/widget/example_view_model.dart';
import 'package:di_container_app_example/ui/widget/example_widget.dart';
import 'package:di_container_app_example/ui/widget/my_app.dart';
import 'package:di_container_app_example/ui/widget/summator.dart';
import 'package:flutter/material.dart';

MainDIContainer makeDIContainer() => _DIContainer();

class _DIContainer implements MainDIContainer, ScreenFactory {
  late final MainNavigation _mainNavigation;

  Summator _makeSummator() => const Summator();
  CalculatorSevice _makeCalculatorSevice() =>
      CalculatorSevice(summator: _makeSummator());

  ExampleViewModel _makeExampleCalcViewModel() =>
      ExampleCalcViewModel(calculatorSevice: _makeCalculatorSevice());

  @override
  Widget makeExmapleScreen() => ExampleWidget(
        model: _makeExampleCalcViewModel(),
      );

  @override
  Widget makeApp() => MyApp(
        mainNavigation: _mainNavigation,
      );
  _DIContainer() {
    _mainNavigation = MainNavigationDefault(this);
  }
}
