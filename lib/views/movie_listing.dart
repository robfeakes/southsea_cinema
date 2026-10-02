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
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 8,
          children: [
            Row(
              spacing: 8,
              children: [
                const Text("Oldboy"),
                const Text("(2003)"),
                const Text("(18)"),
              ],
            ),
            const Text("Southsea Cinema Room"),
            const Text("Tuesday 20 Oct 2026, 18:00 - ends at 19:54"),
            const SizedBox(height: 16),
            const Text(
                "Please note that Discounts / Membership Benefits will be applied once you have selected your tickets"),
            const Text("Please Select Quantities (Up to 5 in total)"),
            const SizedBox(height: 16),
            const Text("Tickets"),
            TicketSelect(),
            ElevatedButton(
              onPressed: () => {},
              child: const Text("ADD TO ORDER"),
            )
          ],
        ),
      ),
    );
  }
}

class TicketSelect extends StatefulWidget {
  const TicketSelect({super.key});

  @override
  State<TicketSelect> createState() {
    return _TicketSelectState();
  }
}

class _TicketSelectState extends State<TicketSelect> {
  int _quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        DropdownMenu<int>(
          initialSelection: 0,
          onSelected: (int? quantity) {
            if (quantity != null) {
              setState(() {
                _quantity = quantity;
              });
            }
          },
          dropdownMenuEntries: [
            DropdownMenuEntry(value: 0, label: "0"),
            DropdownMenuEntry(value: 1, label: "1"),
            DropdownMenuEntry(value: 2, label: "2"),
            DropdownMenuEntry(value: 3, label: "3"),
            DropdownMenuEntry(value: 4, label: "4"),
            DropdownMenuEntry(value: 5, label: "5"),
          ],
        ),
        Text("Adult (£7.50)"),
      ],
    );
  }
}
