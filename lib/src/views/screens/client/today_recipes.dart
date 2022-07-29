import 'package:flutter/material.dart';
import 'package:looky_mobile/src/helpers/view_helper.dart';
import 'package:looky_mobile/src/views/screens/client/today_recipesviewmodel.dart';
import 'package:stacked/stacked.dart';

class TodayRecipesView extends StatefulWidget {
  const TodayRecipesView({Key? key}) : super(key: key);
  @override
  _TodayRecipesViewState createState() => _TodayRecipesViewState();
}

class _TodayRecipesViewState extends State<TodayRecipesView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<TodayRecipesViewModel>.reactive(
      viewModelBuilder: () => TodayRecipesViewModel(),
      builder: (
        BuildContext context,
        TodayRecipesViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Recettes du jour",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  Column(
                    children: [
                      Center(
                        child: SizedBox(
                          width: width(context) * 0.90,
                          child: Image.asset(
                            "images/food1.jpg",
                          ),
                        ),
                      ),
                      Text("Food 1")
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
