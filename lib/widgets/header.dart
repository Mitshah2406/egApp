import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 16, left: 16),
      tileColor: Theme.of(context).colorScheme.secondaryContainer,
      title: Text(
        "Hello Mit!",
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Text(
        "What do you wanna learn today?",
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
