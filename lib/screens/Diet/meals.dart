// ignore_for_file: non_constant_identifier_names

class Meal {
  final String meal_time, name, image_path, time_taken;
  final int kilo_calories_burnt;

  final String preparation;
  final List ingredients;
  final String day;
  bool isFavorite;
  Meal({
    required this.day,
    required this.preparation,
    required this.ingredients,
    required this.meal_time,
    required this.name,
    required this.image_path,
    required this.kilo_calories_burnt,
    required this.time_taken,
    this.isFavorite = false,
  });
}

final meals = [
  Meal(
      day: "Monday",
      meal_time: "BREAKFAST",
      name: "Yam Porridge",
      kilo_calories_burnt: 155,
      time_taken: "10",
      image_path: "assets/images/meals/yam_porridge.jpg",
      ingredients: [
        "poridge:"
            '''1 cup of maize flour, sorghum flour, or millet flour (or a mixture of flours)
2 cups of water or milk
Sugar or honey to taste
Spices such as cinnamon, cardamom, or nutmeg (optional)'''
            "yams"
            '''2-3 yams
Water for boiling
Salt to taste'''
      ],
      preparation: '''Porridge:

In a pot, mix together the maize flour, sorghum flour, or millet flour with the water or milk. Stir until the mixture is smooth and free of lumps.
Place the pot on the stove and turn the heat to medium-high. Cook the porridge, stirring frequently, until it thickens and becomes creamy, about 10-15 minutes.
Add sugar or honey to taste and any desired spices. Stir well and cook for another minute or two.
Remove the porridge from the heat and let it cool slightly before serving.
Yams:

Peel the yams and cut them into bite-sized pieces.
Place the yams in a pot and add enough water to cover them completely. Add salt to taste.
Place the pot on the stove and bring the water to a boil.
Reduce the heat to medium-low and simmer the yams until they are tender, about 15-20 minutes.
Drain the water from the pot and serve the yams hot.'''),
  Meal(
      day: "Monday",
      meal_time: "SNACK",
      name: "Greek Yoghurt",
      kilo_calories_burnt: 120,
      time_taken: "5",
      image_path: "assets/images/meals/Greek_yoghurt.jpg",
      ingredients: [
        """4 cups of milk (whole or 2%),
1/4 cup of plain yogurt with live and active cultures
Cheesecloth or a coffee filter
A strainer
A bowl"""
      ],
      preparation:
          '''Heat the milk in a pot over medium heat, stirring constantly, until it reaches 180°F (82°C). This helps to denature the proteins and improve the texture of the yogurt.

Let the milk cool down to 110°F (43°C). You can speed up the cooling process by placing the pot in a bowl of ice water.

Add the 1/4 cup of plain yogurt to the milk and stir well to combine.

Transfer the mixture to a glass bowl and cover it with plastic wrap. Place the bowl in a warm spot, such as an oven with the light on, and let it sit undisturbed for 4-6 hours.

After 4-6 hours, the yogurt should be thickened and tangy. Line a strainer with cheesecloth or a coffee filter and place it over a bowl.

Pour the yogurt into the strainer and let it drain for 1-2 hours in the refrigerator. The longer you let it drain, the thicker the yogurt will become.

After 1-2 hours, remove the strainer and cheesecloth and transfer the thickened yogurt to a clean container. It will keep in the refrigerator for up to a week.'''),
  Meal(
      day: "Monday",
      meal_time: "LUNCH",
      name: "Brown Rice & lettuce",
      kilo_calories_burnt: 550,
      time_taken: "30",
      image_path: "assets/images/meals/brownRice&Lettuce.jpg",
      ingredients: [
        "Brown Rice"
            '''1 cup brown rice
2 cups water
1 teaspoon salt
1 tablespoon olive oil or butter
1 teaspoon cumin
1/2 teaspoon chili powder
1/2 teaspoon garlic powder
1/4 teaspoon paprika''',
        "lettuce"
            '''Garlic: Adds flavor and depth to sautéed or grilled lettuce.
Olive oil: A healthy fat that adds richness and flavor to cooked lettuce.
Vinegar or lemon juice: Adds a bright and acidic flavor to cooked lettuce dishes.
Bacon: Adds saltiness and smokiness to sautéed or grilled lettuce.
Parmesan cheese: Adds a nutty and salty flavor to grilled or roasted lettuce dishes.
Nuts: Toasted nuts such as almonds or pine nuts add a crunchy texture and nutty flavor to cooked lettuce dishes.
Herbs: Fresh herbs like thyme or basil add a fresh and aromatic flavor to cooked lettuce dishes.
Chicken or shrimp: Adds protein and flavor to lettuce stir-fry or sauté dishes.'''
      ],
      preparation: '''
BROWN RICE
Rinse the brown rice under running water and drain.
In a medium-sized pot, add the brown rice, water, salt, and olive oil or butter.
Bring to a boil over high heat, then reduce the heat to low and cover the pot with a lid.
Simmer for about 45-50 minutes, or until the rice is tender and the water has been absorbed.
Once the rice is cooked, remove the pot from the heat and let it rest for 5-10 minutes.
In a small bowl, mix together the cumin, chili powder, garlic powder, and paprika.
Fluff the rice with a fork, then sprinkle the spice mixture over the rice and stir until well combined.
Serve hot as a side dish or use it as a base for your favorite stir-fry or burrito bowl. Enjoy!

lettuce
Choose the right lettuce: There are many types of lettuce available, including romaine, iceberg, butterhead, and leaf lettuce. Choose the type that best fits your recipe or personal preference.

Wash the lettuce: Fill a large bowl with cold water and gently place the lettuce leaves into the bowl. Swirl the leaves around in the water to remove any dirt or debris. Drain the water and repeat the process until the lettuce is clean.

Dry the lettuce: Place the lettuce leaves in a salad spinner or on a clean kitchen towel. Gently spin or pat dry the leaves until they are mostly dry.

Cut or tear the lettuce: Use a sharp knife or tear the lettuce leaves into bite-sized pieces. Avoid cutting or tearing the lettuce too small, as it can wilt quickly.

Store the lettuce: Store the lettuce in an airtight container or resealable bag in the refrigerator for up to 5 days.

Dress the lettuce: When ready to eat, add your favorite dressing or toppings to the lettuce and enjoy!
'''),
  Meal(
      day: "Monday",
      meal_time: "DINNER",
      name: "Grilled chicken with roasted vegetables",
      kilo_calories_burnt: 245,
      time_taken: "45",
      image_path: "assets/images/meals/chicken&veges.png",
      ingredients: [
        '''For the chicken:

4 boneless, skinless chicken breasts
2 tablespoons olive oil
2 garlic cloves, minced
1 tablespoon chopped fresh herbs, such as thyme, rosemary, or oregano
Salt and pepper, to taste
For the vegetables:

1 large red bell pepper, sliced into strips
1 large yellow bell pepper, sliced into strips
1 medium red onion, sliced
1 medium zucchini, sliced into rounds
1 medium yellow squash, sliced into rounds
2 tablespoons olive oil
Salt and pepper, to taste'''
      ],
      preparation: '''Preheat the grill to medium-high heat.
In a small bowl, combine olive oil, garlic, chopped herbs, salt, and pepper. Brush the mixture over the chicken breasts.
Place the chicken on the grill and cook for 6-8 minutes per side or until cooked through.
While the chicken is cooking, prepare the vegetables. Toss the sliced vegetables with olive oil, salt, and pepper in a large bowl.
Spread the vegetables out on a baking sheet and roast in the oven at 425°F (218°C) for 15-20 minutes, or until tender and slightly browned.
Serve the grilled chicken with the roasted vegetables on the side.'''),
  Meal(
      day: "Tuesday",
      meal_time: "BREAKFAST",
      name: "Mandazi & Milk Tea",
      kilo_calories_burnt: 130,
      time_taken: "20",
      image_path: "assets/images/meals/mandazi&tea.jpg",
      ingredients: [
        '''Ingredients for Mandazi:

2 cups of all-purpose flour
2 teaspoons of baking powder
1/4 teaspoon of salt
1/4 cup of sugar
1/4 cup of melted butter
1/2 cup of warm milk
1 egg
Oil for frying
Ingredients for Milk Tea:

2 cups of water
2 tea bags
1 cup of milk
Sugar to taste'''
      ],
      preparation: '''Instructions for Mandazi:

In a large mixing bowl, combine the flour, sugar, baking powder, salt, and ground cardamom.
Add the beaten egg, milk, and water to the dry ingredients and mix until a dough forms.
Knead the dough for about 5-10 minutes until it becomes smooth and elastic.
Cover the dough and let it rest for at least 30 minutes.
Heat the oil in a large frying pan over medium heat.
Divide the dough into equal portions and roll each portion into a flat circle.
Cut the circles into quarters and fry each piece in the hot oil until golden brown on both sides.
Drain the mandazis on a paper towel to remove excess oil.
Instructions for Milk Tea:

Bring the water to a boil in a saucepan.
Add the tea bags and let them steep for 3-5 minutes.
Add the milk and sugar (if using) to the tea and stir.
Heat the tea over medium heat until it's hot, but not boiling.
Remove the tea bags and serve hot with the mandazis.'''),
  Meal(
      day: "Tuesday",
      meal_time: "LUNCH",
      name: "Githeri & Potatoes",
      kilo_calories_burnt: 180,
      time_taken: "120",
      image_path: "assets/images/meals/githeri_potatoes.jpg",
      ingredients: [
        '''2 cups of githeri (a mixture of maize and beans)
4 medium potatoes, peeled and cubed
1 medium onion, chopped
2 medium tomatoes, chopped
2 cloves of garlic, minced
2 tablespoons of vegetable oil
1 teaspoon of cumin powder
1 teaspoon of coriander powder
Salt and black pepper to taste
Water'''
      ],
      preparation:
          '''Rinse the githeri in cold water and soak in water overnight. Drain the water and rinse again before cooking.
In a large pot, add the githeri and enough water to cover them. Bring to a boil and then reduce the heat to a simmer. Cook for about 30 minutes or until the beans are tender.
In a separate pot, boil the cubed potatoes until they are tender. Drain and set aside.
In a pan, heat the oil over medium heat. Add the chopped onions and sauté for 2-3 minutes until they become translucent.
Add the minced garlic and cook for another minute.
Add the chopped tomatoes and cook until they are soft and mushy.
Add the cooked githeri, cubed potatoes, cumin powder, coriander powder, salt, and black pepper. Stir everything together and let it simmer for 5-10 minutes until the flavors blend well.
Serve hot as a main dish.'''),
  Meal(
      day: "Tuesday",
      meal_time: "SNACK",
      name: "Protein Bars",
      kilo_calories_burnt: 155,
      time_taken: "10",
      image_path: "assets/images/1.png",
      ingredients: [
        '''2 cups of rolled oats
1/2 cup of protein powder
1/2 cup of almond butter or peanut butter
1/2 cup of honey
1/2 cup of chopped nuts (such as almonds or walnuts)
1/4 cup of dried fruit (such as raisins or cranberries)
1/4 cup of chocolate chips (optional)
1 teaspoon of vanilla extract'''
      ],
      preparation: '''Preheat your oven to 350°F (175°C).
Line an 8-inch square baking dish with parchment paper.
In a large bowl, mix together the rolled oats, protein powder, chopped nuts, dried fruit, and chocolate chips (if using).
In a separate bowl, mix together the almond butter or peanut butter, honey, and vanilla extract until smooth.
Add the almond butter or peanut butter mixture to the dry ingredients and mix until everything is well combined and sticky.
Transfer the mixture to the prepared baking dish and press it down firmly with a spatula or your hands.
Bake in the preheated oven for 15-20 minutes or until the edges are golden brown.
Remove from the oven and let the protein bars cool completely in the baking dish.
Once the bars are cool, remove them from the baking dish by lifting the parchment paper and transfer them to a cutting board.
Cut the bars into desired sizes and store in an airtight container for up to a week.'''),
  Meal(
      day: "Tuesday",
      meal_time: "DINNER",
      name: "Spaghetti carbonara with garlic bread",
      kilo_calories_burnt: 280,
      time_taken: "15",
      image_path: "assets/images/meals/spaghetti.jpg",
      ingredients: [
        '''For the spaghetti carbonara:

1 pound spaghetti
8 ounces pancetta or bacon, diced
4 cloves garlic, minced
4 large egg yolks
1 cup freshly grated Parmesan cheese
1/2 cup heavy cream
Salt and black pepper, to taste
Chopped fresh parsley, for garnish
For the garlic bread:

1 large French baguette
1/4 cup unsalted butter, softened
2 cloves garlic, minced
2 tablespoons chopped fresh parsley
Salt and black pepper, to taste
1/4 cup freshly grated Parmesan cheese'''
      ],
      preparation: '''Preheat the oven to 375°F (190°C).
Cook the spaghetti according to package directions until al dente.
While the spaghetti is cooking, prepare the carbonara sauce. In a large skillet over medium heat, cook the pancetta or bacon until crisp. Add the garlic and cook for an additional minute.
In a bowl, whisk together the egg yolks, Parmesan cheese, and heavy cream until smooth.
Drain the spaghetti and add it to the skillet with the pancetta or bacon. Toss to combine.
Remove the skillet from the heat and pour in the egg and cheese mixture. Toss well until the sauce thickens and coats the spaghetti.
Season with salt and black pepper, to taste.
To make the garlic bread, slice the baguette in half lengthwise. In a small bowl, mix together the softened butter, garlic, parsley, salt, and black pepper. Spread the mixture over the cut sides of the bread and sprinkle with Parmesan cheese.
Place the garlic bread on a baking sheet and bake for 10-15 minutes, or until golden brown.
Serve the spaghetti carbonara with chopped fresh parsley on top and garlic bread on the side.'''),
  Meal(
      day: "Wednesday",
      meal_time: "BREAKFAST",
      name: "Tea & Arrowroot",
      kilo_calories_burnt: 281,
      time_taken: "45",
      image_path: "assets/images/meals/arrowroot.jpg",
      ingredients: [
        '''Ingredients for Arrowroot:

2-3 medium-sized arrowroots
Water
Salt (optional)
Ingredients for Tea:

2 cups of water
2 tea bags
Milk (optional)
Sugar (optional)'''
      ],
      preparation: '''Instructions for Arrowroot:

Peel the arrowroots and cut them into thin slices.
Rinse the sliced arrowroots in cold water to remove any dirt or debris.
Place the arrowroot slices in a saucepan and add enough water to cover them.
Add salt (if using) and bring the water to a boil.
Reduce the heat to medium and let the arrowroot cook for about 20-25 minutes or until it's soft and tender.
Drain the arrowroot and serve hot.
Instructions for Tea:

Bring the water to a boil in a saucepan.
Add the tea bags and let them steep for 3-5 minutes.
Remove the tea bags and add milk (if using) and sugar (if using) to taste.
Heat the tea over medium heat until it's hot, but not boiling.
Serve hot with the arrowroot.'''),
  Meal(
      day: "Wednesday",
      meal_time: "LUNCH",
      name: "Ugali & Samaki",
      kilo_calories_burnt: 251,
      time_taken: "30",
      image_path: "assets/images/1.png",
      ingredients: [
        '''1 kg fish (tilapia or any other firm, white fish), cleaned and filleted
2 cups maize flour
4 cups water
Salt, to taste
2 tablespoons vegetable oil
1 onion, chopped
2 cloves garlic, minced
2 tomatoes, chopped
1 tablespoon tomato paste
1/2 teaspoon cumin powder
1/2 teaspoon coriander powder
1/2 teaspoon turmeric powder
1/4 teaspoon cayenne pepper (optional)'''
      ],
      preparation: '''In a large pot, bring the water to a boil.
Add salt to taste.
Gradually add the maize flour to the boiling water, stirring constantly to prevent lumps from forming.
Reduce the heat to low and continue stirring for about 10-15 minutes, or until the mixture is smooth and thick.
Cover the pot and let the ugali simmer for another 10-15 minutes.
While the ugali is cooking, prepare the fish.
Clean the fish and season it with salt and pepper to taste.
In a separate pan, heat the vegetable oil over medium-high heat.
Add the chopped onion and minced garlic and cook until the onion is translucent.
Add the chopped tomatoes to the pan and cook for a few minutes until they are soft.
Place the seasoned fish on top of the tomato mixture and cover the pan.
Let the fish cook for about 10-15 minutes, or until it is cooked through.
Serve the ugali hot with the fish and tomato sauce on the side.'''),
  Meal(
      day: "Wednesday",
      meal_time: "DINNER",
      name: "Brown Rice & lettuce",
      kilo_calories_burnt: 270,
      time_taken: "45",
      image_path: "assets/images/meals/brownRice&Lettuce.jpg",
      ingredients: [
        "Brown Rice"
            '''1 cup brown rice
2 cups water
1 teaspoon salt
1 tablespoon olive oil or butter
1 teaspoon cumin
1/2 teaspoon chili powder
1/2 teaspoon garlic powder
1/4 teaspoon paprika''',
        "lettuce"
            '''Garlic: Adds flavor and depth to sautéed or grilled lettuce.
Olive oil: A healthy fat that adds richness and flavor to cooked lettuce.
Vinegar or lemon juice: Adds a bright and acidic flavor to cooked lettuce dishes.
Bacon: Adds saltiness and smokiness to sautéed or grilled lettuce.
Parmesan cheese: Adds a nutty and salty flavor to grilled or roasted lettuce dishes.
Nuts: Toasted nuts such as almonds or pine nuts add a crunchy texture and nutty flavor to cooked lettuce dishes.
Herbs: Fresh herbs like thyme or basil add a fresh and aromatic flavor to cooked lettuce dishes.
Chicken or shrimp: Adds protein and flavor to lettuce stir-fry or sauté dishes.'''
      ],
      preparation: '''
BROWN RICE
Rinse the brown rice under running water and drain.
In a medium-sized pot, add the brown rice, water, salt, and olive oil or butter.
Bring to a boil over high heat, then reduce the heat to low and cover the pot with a lid.
Simmer for about 45-50 minutes, or until the rice is tender and the water has been absorbed.
Once the rice is cooked, remove the pot from the heat and let it rest for 5-10 minutes.
In a small bowl, mix together the cumin, chili powder, garlic powder, and paprika.
Fluff the rice with a fork, then sprinkle the spice mixture over the rice and stir until well combined.
Serve hot as a side dish or use it as a base for your favorite stir-fry or burrito bowl. Enjoy!

lettuce
Choose the right lettuce: There are many types of lettuce available, including romaine, iceberg, butterhead, and leaf lettuce. Choose the type that best fits your recipe or personal preference.

Wash the lettuce: Fill a large bowl with cold water and gently place the lettuce leaves into the bowl. Swirl the leaves around in the water to remove any dirt or debris. Drain the water and repeat the process until the lettuce is clean.

Dry the lettuce: Place the lettuce leaves in a salad spinner or on a clean kitchen towel. Gently spin or pat dry the leaves until they are mostly dry.

Cut or tear the lettuce: Use a sharp knife or tear the lettuce leaves into bite-sized pieces. Avoid cutting or tearing the lettuce too small, as it can wilt quickly.

Store the lettuce: Store the lettuce in an airtight container or resealable bag in the refrigerator for up to 5 days.

Dress the lettuce: When ready to eat, add your favorite dressing or toppings to the lettuce and enjoy!
'''),
  Meal(
      day: "Thursday",
      meal_time: "BREAKFAST",
      name: "Boiled Eggs & tea",
      kilo_calories_burnt: 156,
      time_taken: "10",
      image_path: "assets/images/meals/eggs&tea.jpg",
      ingredients: [
        '''Ingredients for Boiled Eggs:

Eggs (as many as desired)
Water
Ingredients for Tea:

2 cups of water
2 tea bags
Milk (optional)
Sugar (optional)'''
      ],
      preparation: '''Instructions for Boiled Eggs:

Place the eggs in a saucepan and cover them with cold water.
Bring the water to a boil over medium-high heat.
Once the water starts boiling, reduce the heat to low and let the eggs simmer for about 8-10 minutes.
Remove the eggs from the saucepan and run them under cold water to cool them down.
Peel the eggs and serve them whole or sliced.
Instructions for Tea:

Bring the water to a boil in a saucepan.
Add the tea bags and let them steep for 3-5 minutes.
Remove the tea bags and add milk (if using) and sugar (if using) to taste.
Heat the tea over medium heat until it's hot, but not boiling.
Serve hot with the boiled eggs.
Enjoy your simple and satisfying breakfast of boiled eggs and tea!'''),
  Meal(
      day: "Thursday",
      meal_time: "SNACK",
      name: "Protein Shakes",
      kilo_calories_burnt: 238,
      time_taken: "5",
      image_path: "assets/images/meals/protein_shakes.png",
      ingredients: [
        '''1 scoop of protein powder (whey, plant-based, or other preferred type)
1 cup of unsweetened almond milk or other milk of your choice
1 banana, sliced (optional)
1 tablespoon of almond butter or peanut butter (optional)
1/2 teaspoon of vanilla extract (optional)
Ice cubes (optional)'''
      ],
      preparation:
          '''In a blender, combine the protein powder and unsweetened almond milk (or other milk of your choice).
Add the banana, almond butter or peanut butter, vanilla extract, and ice cubes (if using).
Blend everything together until smooth and creamy.
If the shake is too thick, add more milk; if it's too thin, add more ice or protein powder.
Pour the protein shake into a glass and enjoy immediately.'''),
  Meal(
      day: "Thursday",
      meal_time: "LUNCH",
      name: "Githeri & vegetables",
      kilo_calories_burnt: 155,
      time_taken: "120",
      image_path: "assets/images/meals/githeri_veges.jpg",
      ingredients: [
        '''2 cups of githeri (a mix of beans and maize)
4 cups of water
1 onion, chopped
2 cloves of garlic, minced
2 tomatoes, chopped
2 carrots, diced
1 bell pepper, diced
Salt and pepper to taste
2 tablespoons of oil'''
      ],
      preparation: '''Rinse the githeri and soak it in water overnight.
Drain the water and rinse the githeri again.
In a large pot, add the githeri and 4 cups of water.
Bring to a boil, then reduce the heat and let it simmer for about 45 minutes or until the githeri is cooked.
While the githeri is cooking, heat the oil in a separate pan.
Add the onions and garlic and sauté until the onions are translucent.
Add the chopped tomatoes, carrots, and bell pepper.
Season with salt and pepper to taste.
Cook for about 10 minutes or until the vegetables are tender.
Add the cooked vegetables to the pot with the githeri.
Stir well and let it simmer for a few more minutes.
Serve hot and enjoy!'''),
  Meal(
      day: "Thursday",
      meal_time: "DINNER",
      name: "Ugali and Sukumawiki",
      kilo_calories_burnt: 156,
      time_taken: "30",
      image_path: "assets/images/meals/Ugali_&_Sukuma_Wiki.jpg",
      ingredients: [
        '''2 cups maize flour
4 cups water
Salt, to taste
1 bunch of sukuma wiki (collard greens or kale), washed and chopped
1 onion, chopped
2 tomatoes, chopped
2 tablespoons vegetable oil'''
      ],
      preparation: '''
Preparation:

In a large pot, bring the water to a boil.
Add salt to taste.
Gradually add the maize flour to the boiling water, stirring constantly to prevent lumps from forming.
Reduce the heat to low and continue stirring for about 10-15 minutes, or until the mixture is smooth and thick.
Cover the pot and let the ugali simmer for another 10-15 minutes.
While the ugali is cooking, heat the oil in a separate pan.
Add the onions and cook until they are translucent.
Add the tomatoes and cook until they are soft and the mixture forms a sauce.
Add the sukuma wiki to the pan and cook until they are wilted and tender.
Serve the ugali hot with the sukuma wiki and tomato sauce on top.'''),
  Meal(
      day: "Friday",
      meal_time: "BREAKFAST",
      name: "Kenyan omelet",
      kilo_calories_burnt: 612,
      time_taken: "15",
      image_path: "assets/images/1.png",
      ingredients: [
        '''Ingredients:

3 eggs
1 small onion, diced
1 small tomato, diced
1 small green bell pepper, diced
Salt and pepper, to taste
1 tablespoon of oil'''
      ],
      preparation:
          '''Crack the eggs into a bowl and whisk them until the yolks and whites are fully combined.
Add the diced onion, tomato, and green bell pepper to the bowl and mix well.
Add salt and pepper to taste and mix well again.
Heat the oil in a frying pan over medium-high heat.
Pour the egg mixture into the pan and let it cook for 1-2 minutes or until the bottom is golden brown.
Use a spatula to flip the omelet and let it cook for another 1-2 minutes or until the other side is golden brown.
Slide the omelet onto a plate and serve hot.'''),
  Meal(
      day: "Friday",
      meal_time: "SNACK",
      name: "Keto Snack",
      kilo_calories_burnt: 414,
      time_taken: "20",
      image_path: "assets/images/meals/ketosnack.png",
      ingredients: [
        '''1 cup of shredded cheddar cheese
1/4 teaspoon of garlic powder
1/4 teaspoon of paprika
Salt and pepper, to taste'''
      ],
      preparation:
          '''Preheat your oven to 350°F (175°C) and line a baking sheet with parchment paper.
In a small bowl, mix together the shredded cheddar cheese, garlic powder, paprika, salt, and pepper.
Use a spoon to drop small mounds of the cheese mixture onto the prepared baking sheet, leaving some space between them.
Flatten each mound of cheese with your fingers or a spoon to make a thin layer.
Bake in the preheated oven for 5-7 minutes or until the cheese is melted and bubbly.
Remove from the oven and let the cheese crisps cool completely on the baking sheet.
Once the cheese crisps are cool and crispy, gently remove them from the parchment paper and serve.'''),
  Meal(
      day: "Friday",
      meal_time: "LUNCH",
      name: "Chapati & KUKU",
      kilo_calories_burnt: 271,
      time_taken: "60",
      image_path: "assets/images/meals/kuku_choma.jpg",
      ingredients: [
        '''Ingredients for Chapati:

2 cups of all-purpose flour
1 teaspoon of salt
1 tablespoon of vegetable oil
¾ cup of warm water
Ingredients for Chicken:

1 lb of boneless chicken, cut into small pieces
1 onion, chopped
2 cloves of garlic, minced
1 tablespoon of ginger, grated
2 tomatoes, chopped
1 teaspoon of cumin powder
1 teaspoon of coriander powder
1 teaspoon of garam masala
Salt and pepper to taste
2 tablespoons of oil
Fresh coriander leaves for garnish'''
      ],
      preparation: '''Instructions for Chapati:

In a large mixing bowl, combine the flour, salt, and vegetable oil.
Gradually add warm water and knead the dough for about 5-10 minutes until it becomes smooth and elastic.
Cover the dough and let it rest for at least 30 minutes.
Divide the dough into equal portions and roll them out into thin circles.
Heat a non-stick pan or tawa over medium-high heat.
Place the rolled out chapati on the pan and cook for about 1 minute on each side or until golden brown spots appear.
Repeat the process with the remaining dough.
Instructions for Chicken:

Heat the oil in a large pan over medium-high heat.
Add the onions and sauté until they are translucent.
Add the minced garlic and grated ginger and sauté for another minute.
Add the chopped tomatoes and cook until they are soft and pulpy.
Add the chicken pieces and stir well.
Add the cumin powder, coriander powder, and garam masala and mix well.
Season with salt and pepper to taste.
Cover the pan and let the chicken cook on low heat for about 20 minutes or until it's fully cooked.
Garnish with fresh coriander leaves.
Serve the chapati and chicken together and enjoy!'''),
  Meal(
      day: "Friday",
      meal_time: "DINNER",
      name: "Nyama Choma & Ugali",
      kilo_calories_burnt: 271,
      time_taken: "90",
      image_path: "assets/images/meals/ugali-choma.jpg",
      ingredients: [
        '''1 kg goat or beef meat, cut into pieces
Salt and pepper, to taste
1 tablespoon vegetable oil
2 cups maize flour
4 cups water
Salt, to taste'''
      ],
      preparation: '''Preheat the grill to medium-high heat.
Season the meat with salt and pepper to taste.
Brush the meat with vegetable oil and place it on the grill.
Grill the meat, turning occasionally, until it is cooked to your desired level of doneness.
While the meat is grilling, prepare the ugali. In a large pot, bring the water to a boil.
Add salt to taste.
Gradually add the maize flour to the boiling water, stirring constantly to prevent lumps from forming.
Reduce the heat to low and continue stirring for about 10-15 minutes, or until the mixture is smooth and thick.
Cover the pot and let the ugali simmer for another 10-15 minutes.
Once the meat is cooked, remove it from the grill and let it rest for a few minutes.
Serve the nyama choma hot with the ugali on the side.'''),
  Meal(
      day: "Saturday",
      meal_time: "BREAKFAST",
      name: "Mandazi & Milk Tea",
      kilo_calories_burnt: 271,
      time_taken: "15",
      image_path: "assets/images/meals/mandazi&tea.jpg",
      ingredients: [
        '''Ingredients for Mandazi:

2 cups of all-purpose flour
2 teaspoons of baking powder
1/4 teaspoon of salt
1/4 cup of sugar
1/4 cup of melted butter
1/2 cup of warm milk
1 egg
Oil for frying
Ingredients for Milk Tea:

2 cups of water
2 tea bags
1 cup of milk
Sugar to taste'''
      ],
      preparation: '''Instructions for Mandazi:

In a large mixing bowl, combine the flour, sugar, baking powder, salt, and ground cardamom.
Add the beaten egg, milk, and water to the dry ingredients and mix until a dough forms.
Knead the dough for about 5-10 minutes until it becomes smooth and elastic.
Cover the dough and let it rest for at least 30 minutes.
Heat the oil in a large frying pan over medium heat.
Divide the dough into equal portions and roll each portion into a flat circle.
Cut the circles into quarters and fry each piece in the hot oil until golden brown on both sides.
Drain the mandazis on a paper towel to remove excess oil.
Instructions for Milk Tea:

Bring the water to a boil in a saucepan.
Add the tea bags and let them steep for 3-5 minutes.
Add the milk and sugar (if using) to the tea and stir.
Heat the tea over medium heat until it's hot, but not boiling.
Remove the tea bags and serve hot with the mandazis.'''),
  Meal(
      day: "Sartuday",
      meal_time: "LUNCH",
      name: "Muthokoi",
      kilo_calories_burnt: 271,
      time_taken: "60",
      image_path: "assets/images/meals/muthokoi.jpg",
      ingredients: [
        '''2 cups of maize kernels
1 cup of beans (any variety)
1 onion, chopped
2 cloves of garlic, minced
2 tomatoes, chopped
2 tablespoons of oil
Salt and pepper to taste
Water'''
      ],
      preparation:
          '''Rinse the maize kernels and beans in water and soak them overnight.
Drain the water and rinse the maize and beans again.
In a large pot, add the maize kernels and beans, and enough water to cover them.
Bring to a boil, then reduce the heat and let it simmer for about an hour or until the maize and beans are soft.
While the maize and beans are cooking, heat the oil in a separate pan.
Add the chopped onions and sauté until they are translucent.
Add the minced garlic and chopped tomatoes and sauté for another 2-3 minutes.
Add the sautéed onions, garlic, and tomatoes to the pot with the maize and beans.
Mix well and season with salt and pepper to taste.
Let it simmer for a few more minutes to allow the flavors to blend together.
Serve hot and enjoy!'''),
  Meal(
      day: "Sartuday",
      meal_time: "DINNER",
      name: "Chapati & beans",
      kilo_calories_burnt: 271,
      time_taken: "90",
      image_path: "assets/images/meals/chapati_beans.jpg",
      ingredients: [
        '''1 cup all-purpose flour
1 cup whole wheat flour
1 teaspoon salt
1 tablespoon vegetable oil
1/2 cup warm water
1 onion, chopped
2 cloves garlic, minced
1 can of cooked beans (such as kidney beans or black beans), drained and rinsed
1 tablespoon vegetable oil
Salt and pepper, to taste''',
      ],
      preparation:
          '''In a mixing bowl, combine the all-purpose flour, whole wheat flour, salt, and vegetable oil.
Gradually add the warm water, mixing until a dough is formed.
Knead the dough on a floured surface for about 5-10 minutes, or until it is smooth and elastic.
Cover the dough and let it rest for about 30 minutes.
While the dough is resting, heat the vegetable oil in a pan.
Add the chopped onion and minced garlic and cook until the onion is translucent.
Add the cooked beans to the pan and cook until they are heated through.
Season with salt and pepper to taste.
Divide the dough into equal portions and roll each portion into a thin round shape.
Heat a non-stick pan over medium-high heat.
Cook each chapati for about 30 seconds on each side, or until it is cooked through and has brown spots.
Serve the chapati hot with the beans on the side.'''),
  Meal(
      day: "Sunday",
      meal_time: "BREAKFAST",
      name: "Boiled Eggs & tea",
      kilo_calories_burnt: 271,
      time_taken: "15",
      image_path: "assets/images/meals/eggs&tea.jpg",
      ingredients: [
        '''Ingredients for Boiled Eggs:

Eggs (as many as desired)
Water
Ingredients for Tea:

2 cups of water
2 tea bags
Milk (optional)
Sugar (optional)'''
      ],
      preparation: '''Instructions for Boiled Eggs:

Place the eggs in a saucepan and cover them with cold water.
Bring the water to a boil over medium-high heat.
Once the water starts boiling, reduce the heat to low and let the eggs simmer for about 8-10 minutes.
Remove the eggs from the saucepan and run them under cold water to cool them down.
Peel the eggs and serve them whole or sliced.
Instructions for Tea:

Bring the water to a boil in a saucepan.
Add the tea bags and let them steep for 3-5 minutes.
Remove the tea bags and add milk (if using) and sugar (if using) to taste.
Heat the tea over medium heat until it's hot, but not boiling.
Serve hot with the boiled eggs.
Enjoy your simple and satisfying breakfast of boiled eggs and tea!'''),
  Meal(
      day: "Sunday",
      meal_time: "SNACK",
      name: "Fruit granula",
      kilo_calories_burnt: 271,
      time_taken: "10",
      image_path: "assets/images/meals/fruit_granula.png",
      ingredients: [
        '''3 cups of rolled oats
1 cup of mixed nuts (such as almonds, pecans, and walnuts), chopped
1/2 cup of shredded coconut
1/2 cup of honey
1/4 cup of coconut oil, melted
1 teaspoon of vanilla extract
1/2 teaspoon of ground cinnamon
1/2 teaspoon of salt
1 cup of mixed dried fruit (such as raisins, cranberries, and chopped apricots)'''
      ],
      preparation:
          '''Preheat your oven to 350°F (175°C) and line a baking sheet with parchment paper.
In a large bowl, mix together the rolled oats, mixed nuts, and shredded coconut.
In a separate bowl, whisk together the honey, melted coconut oil, vanilla extract, ground cinnamon, and salt until well combined.
Pour the honey mixture over the oat mixture and stir until everything is well coated.
Spread the mixture evenly on the prepared baking sheet and bake in the preheated oven for 20-25 minutes or until golden brown, stirring occasionally.
Remove from the oven and let the granola cool completely on the baking sheet.
Once the granola is cool, stir in the mixed dried fruit.
Store the fruit granola in an airtight container for up to 2 weeks.'''),
  Meal(
      day: "Sunday",
      meal_time: "LUNCH",
      name: "Grilled chicken with roasted vegetables",
      kilo_calories_burnt: 271,
      time_taken: "120",
      image_path: "assets/images/meals/chicken&veges.png",
      ingredients: [
        '''For the chicken:

4 boneless, skinless chicken breasts
2 tablespoons olive oil
2 garlic cloves, minced
1 tablespoon chopped fresh herbs, such as thyme, rosemary, or oregano
Salt and pepper, to taste
For the vegetables:

1 large red bell pepper, sliced into strips
1 large yellow bell pepper, sliced into strips
1 medium red onion, sliced
1 medium zucchini, sliced into rounds
1 medium yellow squash, sliced into rounds
2 tablespoons olive oil
Salt and pepper, to taste'''
      ],
      preparation: '''Preheat the grill to medium-high heat.
In a small bowl, combine olive oil, garlic, chopped herbs, salt, and pepper. Brush the mixture over the chicken breasts.
Place the chicken on the grill and cook for 6-8 minutes per side or until cooked through.
While the chicken is cooking, prepare the vegetables. Toss the sliced vegetables with olive oil, salt, and pepper in a large bowl.
Spread the vegetables out on a baking sheet and roast in the oven at 425°F (218°C) for 15-20 minutes, or until tender and slightly browned.
Serve the grilled chicken with the roasted vegetables on the side.'''),
  Meal(
      day: "Sunday",
      meal_time: "DINNER",
      name: "Ugali & Samaki",
      kilo_calories_burnt: 271,
      time_taken: "45",
      image_path: "assets/images/meals/ugali_samaki.jpg",
      ingredients: [
        '''1 kg fish (tilapia or any other firm, white fish), cleaned and filleted
2 cups maize flour
4 cups water
Salt, to taste
2 tablespoons vegetable oil
1 onion, chopped
2 cloves garlic, minced
2 tomatoes, chopped
1 tablespoon tomato paste
1/2 teaspoon cumin powder
1/2 teaspoon coriander powder
1/2 teaspoon turmeric powder
1/4 teaspoon cayenne pepper (optional)'''
      ],
      preparation: '''In a large pot, bring the water to a boil.
Add salt to taste.
Gradually add the maize flour to the boiling water, stirring constantly to prevent lumps from forming.
Reduce the heat to low and continue stirring for about 10-15 minutes, or until the mixture is smooth and thick.
Cover the pot and let the ugali simmer for another 10-15 minutes.
While the ugali is cooking, prepare the fish.
Clean the fish and season it with salt and pepper to taste.
In a separate pan, heat the vegetable oil over medium-high heat.
Add the chopped onion and minced garlic and cook until the onion is translucent.
Add the chopped tomatoes to the pan and cook for a few minutes until they are soft.
Place the seasoned fish on top of the tomato mixture and cover the pan.
Let the fish cook for about 10-15 minutes, or until it is cooked through.
Serve the ugali hot with the fish and tomato sauce on the side.'''),
];
