import 'package:flutter/material.dart';
import 'package:southsea_cinema/models/movie.dart';

class TicketCard extends StatelessWidget {
  final Movie movie;

  const TicketCard({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("BOOK TICKETS"),
        for (var time in movie.startTimes)
          Row(
            children: [
              Text(time),
              ElevatedButton(onPressed: () {}, child: Text("BOOK NOW"))
            ],
          ),
      ],
    );
  }
}
