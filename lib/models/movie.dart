class Movie {
  final String id;
  final String name;
  final String rating;
  final String description;
  final double price;
  final double runtime;
  final String imagePath;

  const Movie({
    required this.id,
    required this.name,
    required this.rating,
    required this.description,
    required this.price,
    required this.runtime,
    required this.imagePath,
  });
}
