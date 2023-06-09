import 'package:di_container_app_example/factories/di_container.dart';
import 'package:flutter/material.dart';

abstract class MainDIContainer {
  Widget makeApp();
}

final diContainer = makeDIContainer();
void main() {
  final app = diContainer.makeApp();
  runApp(app);
}
