import 'package:flutter/material.dart';

import '../models/recipe.dart';

class RecipeScreen extends StatefulWidget {
  final Recipe recipe;

  const RecipeScreen({super.key, required this.recipe});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.title),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              transitionBuilder: (child, animation) {
                return RotationTransition(
                  turns: Tween<double>(
                    begin: 0,
                    end: 1,
                  ).animate(animation),
                  child: child,
                );
              },
              child: Icon(
                isFavorite ? Icons.star : Icons.star_border,
                key: ValueKey(isFavorite),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (widget.recipe.imageUrl != "")
              Hero(
                tag: widget.recipe.id,
                child: Image.network(
                  widget.recipe.imageUrl,
                  fit: BoxFit.cover,
                ),
              )
            else
              Image.asset('assets/images/default.png'),
            Text(
              'Ingredients',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              height: 300,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: ((_, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 8),
                      child: Text(
                        '• ${widget.recipe.ingredients[index]}',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  );
                }),
                itemCount: widget.recipe.ingredients.length,
              ),
            ),
            Text(
              'Steps',
              style: Theme.of(context).textTheme.headline5,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 6),
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 4),
                itemBuilder: ((_, index) {
                  return ListTile(
                    leading: CircleAvatar(child: Text('${index + 1}')),
                    title: Text(
                      widget.recipe.steps[index],
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  );
                }),
                itemCount: widget.recipe.steps.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
