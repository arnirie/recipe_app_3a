import 'package:flutter/material.dart';
import 'package:pinoyrecipies/models/recipe.dart';
import 'package:pinoyrecipies/screens/recipe_screen.dart';

class RecipeEntryItem extends StatelessWidget {
  final Recipe recipe;

  const RecipeEntryItem({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    var sWidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              print(recipe.id);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => RecipeScreen(
                            recipe: recipe,
                          ))));
            },
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 3 / 2,
                  child: Hero(
                    tag: recipe.id,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      child: recipe.imageUrl != ""
                          ? Image.network(
                              recipe.imageUrl,
                              fit: BoxFit.cover,
                            )
                          : Image.asset('assets/images/default.png'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    width: sWidth * 0.75,
                    // height: 100,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.black45,
                    child: Text(
                      recipe.title,
                      style: Theme.of(context).textTheme.caption,
                      softWrap: true,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.schedule),
                SizedBox(
                  width: 8,
                ),
                Text(
                  '${recipe.minutesDuration} minute(s)',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
