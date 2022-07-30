import 'package:flutter/material.dart';
import 'package:looky_mobile/src/helpers/navigation_helper.dart';
import 'package:looky_mobile/src/helpers/view_helper.dart';
import 'package:looky_mobile/src/views/screens/home/home_viewmodel.dart';
import 'package:looky_mobile/src/views/screens/today_recipes/today_recipes.dart';
import 'package:stacked/stacked.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => Scaffold(
        body: Stack(
          children: [
            Image.asset(
              "images/food1.jpg",
              width: width(context),
              height: height(context),
              fit: BoxFit.cover,
            ),
            Container(
              width: width(context),
              height: height(context),
              color: Colors.black26,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Looky",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 48,
                    ),
                  ),
                ),
                SizedBox(
                  width: width(context),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () {},
                      child: const Text(
                        "Pour les restaurants",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: width(context),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 0, right: 16, left: 16, bottom: 64),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.orange),
                      onPressed: () =>
                          navigationHelper(context, const TodayRecipesView()),
                      child: const Text(
                        "Pour les particuliers",
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
