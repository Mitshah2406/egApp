import 'package:flutter/material.dart';
import 'package:training_app/widgets/grid_item.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final gridItemWidth = (MediaQuery.of(context).size.width - 36) / 2;
    final gridItemHeight = gridItemWidth * 0.3;
    return SizedBox(
      height: 150,
      child: GridView(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: gridItemWidth / gridItemHeight,
        ),
        children: const [
          GridItem(title: "Programs", icon: Icons.book),
          GridItem(title: "Get Help", icon: Icons.help),
          GridItem(title: "Learn", icon: Icons.book),
          GridItem(title: "DD Tracker", icon: Icons.book),
        ],
      ),
    );
  }
}
