import 'package:flutter/material.dart';

abstract class ExampleViewModel {
  void onPressMe();
  void onPressMe2();
}

class ExampleWidget extends StatelessWidget {
  final ExampleViewModel model;

  const ExampleWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: model.onPressMe, child: const Text('Press 1')),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: model.onPressMe2, child: const Text('Press 2')),
            ],
          ),
        ),
      ),
    );
  }
}
