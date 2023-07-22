import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem(
      {super.key,
      required this.title,
      required this.icon,
      this.height = 100.0});
  final String title;
  final IconData icon;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(children: [
        Icon(
          icon,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      ]),
    );
  }
}
