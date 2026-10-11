import "package:flutter/material.dart";
import "package:southsea_cinema/constants.dart";
import "package:southsea_cinema/models/movie.dart";
import "package:southsea_cinema/widgets/ticket_card.dart";

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cinemaSurface,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  movie.name.toUpperCase(),
                  style: TextStyle(
                    color: cinemaBrand,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "(${movie.rating})",
                  style: TextStyle(
                    color: cinemaFontMuted,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Image.asset(
                  movie.imagePath,
                  width: 80,
                  height: 120,
                  fit: BoxFit.cover,
                ),
                Expanded(
                  child: Text(
                    movie.description,
                    style: TextStyle(
                      color: cinemaFontWhite,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
            TicketCard(movie: movie),
          ],
        ),
      ),
    );
  }
}
