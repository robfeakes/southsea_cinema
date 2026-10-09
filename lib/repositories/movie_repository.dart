import "package:southsea_cinema/models/movie.dart";

class MovieRepository {
  List<Movie> getMovies() {
    return const [
      Movie(
        id: "oldboy-(2003)",
        name: "Oldboy",
        year: 2003,
        rating: "18",
        description:
            "With no clue how he came to be imprisoned, drugged and tortured for 15 years, a desperate man seeks revenge on his captors.",
        startTime: "Tuesday 20 Oct 2026 15:00",
        price: 7.50,
        runtime: 120,
        imagePath: "assets/images/oldboy-(2003).jpg",
      ),
      Movie(
        id: 'pulp-fiction-(1994)',
        name: 'Pulp Fiction',
        year: 1994,
        rating: '18',
        description:
            'A burger-loving hit man, his philosophical partner, a drug-addled gangster’s moll and a washed-up boxer converge in this sprawling, comedic crime caper. Their adventures unfurl in three stories that ingeniously trip back and forth in time.',
        startTime: 'Wednesday 14 Oct 2026 18:00',
        price: 8.00,
        runtime: 154,
        imagePath: "assets/images/pulp-fiction-(1994).jpg",
      ),
      Movie(
        id: 'in-bruges-(2008)',
        name: 'In Bruges',
        year: 2008,
        rating: '18',
        description:
            'Ray and Ken, two hit men, are in Bruges, Belgium, waiting for their next mission. While they are there they have time to think and discuss their previous assignment. When the mission is revealed to Ken, it is not what he expected.',
        startTime: 'Saturday 24 Oct 2026 19:00',
        price: 6.50,
        runtime: 108,
        imagePath: 'assets/images/in-bruges-(2008).jpg',
      ),
    ];
  }
}
