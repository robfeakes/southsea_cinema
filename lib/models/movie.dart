//might include screen time
class Movie {
  final String id;
  final String name;
  final String rating;
  final String description;
  final DateTime startTime;
  final double runtime;
  final double price;
  final String location;
  final String imagePath;

  const Movie({
    required this.id,
    required this.name,
    required this.rating,
    required this.description,
    required this.startTime,
    required this.price,
    required this.location,
    required this.runtime,
    required this.imagePath,
  });
}
