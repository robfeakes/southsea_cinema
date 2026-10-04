//might include screen time
class Movie {
  final String id;
  final String name;
  final int year;
  final String rating;
  final String description;
  final String startTime;
  final double runtime;
  final double price;
  final String location;
  final String imagePath;

  const Movie({
    required this.id,
    required this.name,
    required this.year,
    required this.rating,
    required this.description,
    required this.startTime,
    required this.price,
    required this.location,
    required this.runtime,
    required this.imagePath,
  });
}
