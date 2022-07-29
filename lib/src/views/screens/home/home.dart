import 'package:flutter/material.dart';
import 'package:looky_mobile/src/helpers/navigation_helper.dart';
import 'package:looky_mobile/src/views/screens/home/home_viewmodel.dart';
import 'package:looky_mobile/src/views/screens/client/today_recipes.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Looky"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () => navigationHelper(context, TodayRecipesView()),
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
