class Recipe {
  final int id;
  final int catId;
  final String title;
  final String imageUrl;
  final List<String> steps;
  final List<String> ingredients;
  final int minutesDuration;

  Recipe({
    required this.id,
    required this.catId,
    required this.title,
    this.imageUrl = '',
    required this.steps,
    required this.ingredients,
    this.minutesDuration = 0,
  });
}
