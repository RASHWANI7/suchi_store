class Food {
  final String name_of_the_food;
  final String price_of_the_food;
  final String image_of_the_food;
  final String rate_of_the_food;
  final String describe_of_the_food;

  Food(
      {required this.name_of_the_food,
      required this.price_of_the_food,
      required this.image_of_the_food,
      required this.rate_of_the_food,
      required this.describe_of_the_food});

  String get _name => name_of_the_food;
  String get _peice => price_of_the_food;
  String get _image => image_of_the_food;
  String get _rate => rate_of_the_food;
  String get _describe => describe_of_the_food;
}
