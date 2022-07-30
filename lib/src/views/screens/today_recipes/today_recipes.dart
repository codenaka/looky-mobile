import 'package:flutter/material.dart';
import 'package:looky_mobile/src/helpers/view_helper.dart';
import 'package:looky_mobile/src/views/screens/today_recipes/today_recipesviewmodel.dart';
import 'package:looky_mobile/src/views/widgets/recipe_card.dart';
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
          drawer: const Drawer(
            backgroundColor: Colors.orange,
          ),
          appBar: AppBar(
            title: const Text("Looky"),
            elevation: 0,
            backgroundColor: Colors.orange,
            shadowColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Recettes du jour",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Column(
                    children: [
                      RecipeCard(
                        title: "Saumon",
                        cookTime: "15 min",
                        rating: "4",
                        image: "assets/food1.jpg",
                      )
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
