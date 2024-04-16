class Game {
  final String name;
  final String description;
  final double rating;
  final String image;

  const Game({
    required this.name,
    required this.rating,
    required this.image,
    this.description = "",
  });
}
