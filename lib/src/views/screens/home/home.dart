import 'package:flutter/material.dart';
import 'package:looky_mobile/src/models/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Je suis un client"),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Je suis un restaurateur"),
            ),
          ],
        ),
      ),
    );
  }
}
