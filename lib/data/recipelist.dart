import 'package:pinoyrecipies/models/recipe.dart';

List<Recipe> RECIPELIST = [
  Recipe(
    id: 1,
    catId: 2,
    title: 'Pinapaitang Kambing',
    steps: [
      'Heat a cooking pot and pour-in 4 cups of water and put-in 1 tablespoon salt. Bring to a boil.',
      'Put-in the ox tripe and small intestines and simmer until tender. This should take approximately 35 to 50 minutes.',
      'Turn off heat. Remove the tender ox tripe and small intestines then slice. Set aside. Discard the water.',
      'Heat a clean cooking pot and pour-in cooking oil.',
      'When the oil is hot enough, sauté garlic, onion, and ginger.',
      'Add the beef, heart, sliced intestines, and tripe then cook for about 3 to 4 minutes.',
      'Add 1 1/2 tablespoon salt and ground black pepper then stir for a minute.',
      'Pour-in remaining 4 cups of water and bring to a boil. Simmer for 40 minutes (you may add more water if needed).',
      'Add bile then simmer for 5 minutes.',
      'Add the finger chilies and squeeze-in the lemon juice then simmer for 3 minutes.',
      'Turn off the heat and transfer to a serving bowl.'
          'Serve hot. Share and enjoy!'
    ],
    ingredients: [
      '1/2 lb ox tripe',
      '1/2 lb cow’s small intestine',
      '1/2 lb beef thinly sliced and chopped',
      '1/2 lb cow’s heart',
      '2 tbsp bile',
      '2 thumbs ginger julienned',
      '1 piece onion diced',
      '6 cloves garlic crushed and chopped',
      '8 cups water',
      '4 to 6 pieces finger chilies',
      '2 1/2 tablespoons salt',
      '1/2 tablespoon ground black pepper',
      '1 to 2 pieces lemon or 5 to 8 pieces calamansi',
      '2 tablespoons cooking oil'
    ],
    imageUrl:
        'https://panlasangpinoy.com/wp-content/uploads/2011/10/papaitan.jpg',
    minutesDuration: 80,
  ),
  Recipe(
      id: 2,
      catId: 2,
      title: 'Dinengdeng',
      steps: [
        'Bring water to a boil in a large cooking pot.',
        'Add the ginger, onion, and tomato. Cook covered for 5 minutes.',
        'Pour-in the bagoong isda. Stir.',
        'Add okra and string beans. Stir and add the ampalaya. Cook in medium heat for 7 to 10 minutes.',
        'Put-in the squash flower and malunggay leaves. Cook for 3 to 5 minutes.',
        'Add the grilled milk fish. Let it stay for 3 to 5 minutes to add flavor to the dish.',
        'Serve. Share and enjoy!'
      ],
      ingredients: [
        '1 whole milk fish sliced and grilled',
        '2 to 3 cups malunggay moringa leaves, cleaned',
        '2 cups squash flower',
        '12 to 15 pieces small to medium sized okra',
        '1 bundle string beans sliced into 3 inch pieces',
        '2 pieces medium ampalaya bitter gourd, cored and sliced',
        '2 to 3 tablespoons bagoong isda unprocessed fish sauce',
        '1 knob ginger sliced',
        '2 medium tomato chopped',
        '1 medium onion chopped',
        '3 cups water'
      ],
      imageUrl:
          'https://panlasangpinoy.com/wp-content/uploads/2012/08/Dinengdeng02042341.jpg',
      minutesDuration: 45),
  Recipe(
    id: 3,
    catId: 5,
    title: 'Laing',
    steps: ['Step 1', 'Step 2'],
    ingredients: ['ing1', 'ing2'],
  )
];
