import 'package:flutter/material.dart';
import 'package:pinoyrecipies/models/category.dart';
import 'package:pinoyrecipies/screens/recipieslist_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // print('pressed ${category.title}');
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: ((_) => RecipiesListScreen(
                  category: category,
                )),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              category.backColor.withOpacity(0.6),
              category.backColor,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
