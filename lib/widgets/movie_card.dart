import "package:flutter/material.dart";
import "package:southsea_cinema/models/movie.dart";
import "package:southsea_cinema/widgets/ticket_card.dart";

class MovieCard extends StatelessWidget {
  final Movie movie;

  const MovieCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(movie.name),
            Text("(${movie.rating})"),
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
              child: Text(movie.description),
            ),
          ],
        ),
        TicketCard(movie: movie),
      ],
    );
  }
}
