import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:intl/intl.dart';

import 'cart_item.dart';
import 'food.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> _menu = [
    // burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy, perfectly grilled beef patty topped with melted cheddar, crisp lettuce, ripe tomatoes, and tangy pickles, all nestled in a soft, toasted bun. The classic comfort food that satisfies every bite!",
      imagePath: "lib/images/burgers/cheese_burger.jpeg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "Say aloha to flavor! This burger brings a tropical twist with a juicy beef patty, grilled pineapple, crispy bacon, and melted Swiss cheese, all drizzled with a sweet and tangy teriyaki sauce, served on a soft, toasted bun. A taste of paradise in every bite!",
      imagePath: "lib/images/burgers/aloha_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "BBQ Sauce", price: 1.99),
        Addon(name: "Fried Egg", price: 2.99),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description:
          "A smoky, juicy beef patty smothered in rich BBQ sauce, topped with crispy onion rings, melted cheddar cheese, and crunchy pickles, all served on a toasted bun. Bold, tangy, and utterly satisfying!",
      imagePath: "lib/images/burgers/bbq_burger.jpeg",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Grilled Onions", price: 0.99),
        Addon(name: "Extra Cheese", price: 1.99),
        Addon(name: "Jalapenos", price: 2.99),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "A savory beef patty topped with creamy blue cheese, caramelized onions, crispy bacon, and a hint of tangy balsamic glaze, all sandwiched between a toasted brioche bun. A bold, gourmet flavor with every bite!",
      imagePath: "lib/images/burgers/bluemoon.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Blue Cheese", price: 0.99),
        Addon(name: "Bacon Strips", price: 1.99),
        Addon(name: "Grilled Onions", price: 2.99),
      ],
    ),
    Food(
      name: "Vegetable Burger",
      description:
          "A hearty veggie patty made from a blend of fresh, seasoned vegetables, topped with crisp lettuce, juicy tomatoes, sliced avocado, and a zesty garlic aioli, all wrapped in a soft, toasted whole grain bun. Deliciously healthy and satisfying!",
      imagePath: "lib/images/burgers/vegetable_burger.png",
      price: 0.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 0.99),
        Addon(name: "Vegan Cheese", price: 1.99),
        Addon(name: "Extra Avocado", price: 2.99),
      ],
    ),
    // DESSERTS

    Food(
      name: "Apple Pie",
      description:
          "Warm, cinnamon-spiced apples baked to perfection inside a golden, flaky crust. Each bite bursts with sweet, tangy flavor, making it the ultimate comfort dessert.",
      imagePath: "lib/images/desserts/apple_pie.jpeg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Extra Cinamon", price: 1.99),
        Addon(name: "Vanilla Ice Cream", price: 2.99),
      ],
    ),
    Food(
      name: "Birthday Cake",
      description:
          'A moist, fluffy vanilla cake layered with rich buttercream frosting and colorful sprinkles. Celebrate every occasion with a slice of joy that brings sweetness and smiles!',
      imagePath: "lib/images/desserts/birthday_cake.jpeg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Fresh Fruit Topping", price: 0.99),
        Addon(name: "Extra Frosting", price: 1.99),
        Addon(name: "Candle for Celebration", price: 2.99),
      ],
    ),
    Food(
      name: "Cheese Cake",
      description:
          'Silky-smooth and decadently creamy, this classic cheesecake sits atop a buttery graham cracker crust. Each slice is a perfect balance of sweet and tangy, making it an irresistible treat!',
      imagePath: "lib/images/desserts/cheese_cake.png",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Sauce", price: 0.99),
        Addon(name: "Chocolate Drizzle", price: 1.99),
        Addon(name: "Fresh Berries", price: 2.99),
      ],
    ),
    Food(
      name: "Cookies",
      description:
          "Soft and chewy, these freshly baked cookies are packed with rich chocolate chips and a hint of vanilla. Each bite melts in your mouth, bringing a warm, nostalgic sweetness that's simply irresistible!",
      imagePath: "lib/images/desserts/cookies.png",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Caramel Drizzle", price: 0.99),
        Addon(name: "Extra Chocolate Chips", price: 1.99),
        Addon(name: "Nut", price: 2.99),
      ],
    ),
    Food(
      name: "Ice Cream",
      description:
          "Creamy, indulgent, and utterly delightful, this rich ice cream comes in a variety of classic and unique flavors. Perfectly smooth and refreshingly cold, it’s the ultimate treat for any sweet tooth!",
      imagePath: "lib/images/desserts/ice_cream.jpeg",
      price: 0.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.99),
        Addon(name: "Fruit Toppings", price: 1.99),
        Addon(name: "Crushed Cookies", price: 2.99),
      ],
    ),
    //  DRINKS
    Food(
      name: "Espresso_Martini",
      description:
          "A delightful blend of rich espresso, smooth vodka, and a hint of coffee liqueur, shaken to perfection and served in a chilled glass. This cocktail is both energizing and indulgent, making it the perfect pick-me-up with a twist!",
      imagePath: "lib/images/drinks/espresso_martini.jpeg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Flavoured SYRUPS", price: 0.99),
        Addon(name: "Chocolate Shavings", price: 1.99),
        Addon(name: "Coffee Bean Garnish", price: 2.99),
      ],
    ),
    Food(
      name: "Ice Cocktails",
      description:
          "Chilled to perfection, these vibrant ice cocktails are a refreshing blend of fruity flavors and crisp spirits, served over ice for a cool and invigorating sip. Perfect for any occasion, they offer a burst of flavor that delights the senses!",
      imagePath: "lib/images/drinks/ice_cocktails.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Flavoured SYRUPS", price: 0.99),
        Addon(name: "Edible Flowers", price: 1.99),
        Addon(name: "Fresh Fruit Garnishes", price: 2.99),
      ],
    ),
    Food(
      name: "Mojito",
      description:
          "A refreshing mix of muddled mint leaves, zesty lime, and a splash of rum, all topped with fizzy soda water and served over ice. Every sip is a cool, invigorating burst of flavor—perfect for brightening up any moment!",
      imagePath: "lib/images/drinks/mojito.jpeg",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Flavoured Syrups", price: 0.99),
        Addon(name: "Extra Mint", price: 1.99),
        Addon(name: "Fresh Fruit Slices", price: 2.99),
      ],
    ),
    Food(
      name: "Negroni",
      description:
          "A sophisticated blend of gin, sweet vermouth, and bitter Campari, stirred to perfection and served over ice with a twist of orange. This classic cocktail offers a bold and balanced flavor that tantalizes the palate with every sip.",
      imagePath: "lib/images/drinks/negroni.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Flavoured bitters", price: 0.99),
        Addon(name: "Extra Vermouth", price: 1.99),
        Addon(name: "Orange Twist Garnish", price: 2.99),
      ],
    ),
    Food(
      name: "Old Fashion",
      description:
          "A timeless cocktail that showcases the rich flavors of bourbon or rye whiskey, muddled with a sugar cube and aromatic bitters, garnished with an orange twist and a cherry. This classic drink is smooth, sophisticated, and perfect for sipping.",
      imagePath: "lib/images/drinks/old_fashion.png",
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Cherry", price: 0.99),
        Addon(name: "Extra Bitters", price: 1.99),
        Addon(name: "Orange Slice", price: 2.99),
      ],
    ),
    // SALADS
    Food(
      name: "Asian Salad",
      description:
          "A vibrant mix of crisp greens, shredded carrots, and crunchy cabbage, topped with sliced cucumbers and sesame seeds. Drizzled with a tangy soy-ginger dressing, this salad is a refreshing and flavorful dish that bursts with color and nutrition!",
      imagePath: "lib/images/salads/asian_salad.jpeg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 0.99),
        Addon(name: "Tofu", price: 1.99),
        Addon(name: "Crispy Wontons", price: 2.99),
      ],
    ),
    Food(
      name: "Caesar",
      description:
          "A classic delight featuring crisp romaine lettuce tossed with creamy Caesar dressing, crunchy croutons, and shaved Parmesan cheese. This salad strikes the perfect balance of flavors, making it a timeless favorite!",
      imagePath: "lib/images/salads/caesar.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Shrimps", price: 0.99),
        Addon(name: "Bacon Bits", price: 1.99),
        Addon(name: "Grilled Chicken", price: 2.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "A refreshing medley of ripe tomatoes, crisp cucumbers, red onions, Kalamata olives, and creamy feta cheese, drizzled with extra virgin olive oil and a sprinkle of oregano. This vibrant salad brings a taste of the Mediterranean to your plate!",
      imagePath: "lib/images/salads/greek_salad.png",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Bell Peppers", price: 0.99),
        Addon(name: "Chickpeas", price: 1.99),
        Addon(name: "Grilled Chicken", price: 2.99),
      ],
    ),
    Food(
      name: "SouthWest Salad",
      description:
          "A hearty blend of mixed greens, black beans, corn, diced tomatoes, and avocado, topped with crispy tortilla strips and a zesty lime-cilantro dressing. This salad packs a punch of flavor and freshness, perfect for a satisfying meal!",
      imagePath: "lib/images/salads/southwest.jpeg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Shrimp", price: 0.99),
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Jalapeños", price: 2.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "A nutritious and flavorful blend of fluffy quinoa, colorful bell peppers, diced cucumbers, cherry tomatoes, and fresh herbs, tossed in a light lemon vinaigrette. This salad is both filling and refreshing, making it a perfect choice for any occasion!",
      imagePath: "lib/images/salads/quinoa_salad.jpeg",
      price: 0.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Chickpeas", price: 0.99),
        Addon(name: "Avocado Slices", price: 1.99),
        Addon(name: "Feta-Cheese", price: 2.99),
      ],
    ),
    // SIDES
    Food(
      name: "Brocolli Sides",
      description:
          "Tender, vibrant broccoli florets lightly steamed or roasted to perfection, seasoned with a sprinkle of garlic and lemon zest. This nutritious side dish is both delicious and visually appealing, adding a fresh crunch to your meal!",
      imagePath: "lib/images/sides/brocoli.jpeg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Parmesan Cheese", price: 0.99),
        Addon(name: "Toasted Almonds", price: 1.99),
        Addon(name: "A Drizzle of Balsamic Glaze", price: 2.99),
      ],
    ),
    Food(
      name: "Garlic Bread",
      description:
          "Golden, crispy bread slathered with a rich garlic butter spread, baked to perfection until fragrant and delicious. Each bite delivers a savory crunch that pairs beautifully with pasta, soups, or salads—an irresistible classic!",
      imagePath: "lib/images/sides/garlic_bread.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "herbs (parsley, oregano)", price: 1.99),
        Addon(name: "A side of marinara sauce", price: 2.99),
      ],
    ),
    Food(
      name: "Loaded Fries",
      description:
          "Crispy golden fries piled high with melted cheese, crispy bacon bits, and drizzled with creamy ranch dressing. Topped with fresh green onions, these indulgent fries are a flavor-packed snack or side that’s sure to satisfy!",
      imagePath: "lib/images/sides/loaded_fries.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Jalapeños", price: 0.99),
        Addon(name: "chili", price: 1.99),
        Addon(name: "sour crea", price: 2.99),
      ],
    ),
    Food(
      name: "Onions Ring",
      description:
          "Crispy, golden-brown onion rings that are perfectly fried to a crunchy finish. Each bite offers a sweet, tender onion inside, making them an irresistible snack or side dish that pairs well with burgers and sandwiches!",
      imagePath: "lib/images/sides/onions_ring.png",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Spicy dipping sauce", price: 0.99),
        Addon(name: "Garlic aioli", price: 1.99),
        Addon(name: "Ranch dressing", price: 2.99),
      ],
    ),
    Food(
      name: "Sweet Potato",
      description:
          "Crispy on the outside and tender on the inside, these sweet potato fries are lightly seasoned and fried to perfection. Their natural sweetness adds a delightful twist to the classic fry, making them a healthier and tastier alternative!",
      imagePath: "lib/images/sides/sweet_potato.jpeg",
      price: 0.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cinnamon sugar", price: 0.99),
        Addon(name: "Spicy aioli", price: 1.99),
        Addon(name: "Marshmallow dip", price: 2.99),
      ],
    ),
  ];
  final List<CartItem> _cart = [];
  String _deliveryAddress = "Aguda Surulere, Lagos";

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(
        CartItem(
          food: food,
          selectedAddons: selectedAddons,
        ),
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);
    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;

    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("----------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name}(${_formatPrice(addon.price)})")
        .join(", ");
  }
}
