import 'package:flutter/material.dart';
import 'package:southsea_cinema/constants.dart';
import 'package:southsea_cinema/widgets/nav_drawer.dart';

class MovieListing extends StatelessWidget {
  const MovieListing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appTitle, style: cinemaHeaderStyle),
        backgroundColor: cinemaSurface,
        iconTheme: const IconThemeData(color: cinemaBrand),
        elevation: 0,
      ),
      drawer: const NavDrawer(),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              spacing: 8,
              children: [
                const Text("Oldboy"),
                const Text("(2003)"),
                const Text("(18)"),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            const Text("Southsea Cinema Room"),
            const SizedBox(
              height: 8,
            ),
            const Text("Tuesday 20 Oct 2026, 18:00 - ends at 19:54")
          ],
        ),
      ),
    );
  }
}
