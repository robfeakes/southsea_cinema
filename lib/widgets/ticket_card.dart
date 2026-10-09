import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';

class TicketCard extends StatelessWidget {
  final Movie movie;

  const TicketCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Text("TICKETCARD PLACEHOLDER ${movie.id}");
  }
}
