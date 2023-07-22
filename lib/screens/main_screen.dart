import 'package:flutter/material.dart';
import 'package:training_app/widgets/category_grid.dart';
import 'package:training_app/widgets/header.dart';
import 'package:training_app/widgets/carousel.dart';
// import 'package:training_app/widgets/my_app_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Theme.of(context).colorScheme.primary,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        elevation: 2,
        onTap: (value) {},
        currentIndex: 0,
        showUnselectedLabels: true,
        unselectedItemColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu_book_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Learn",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings_suggest_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Tools",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Profile",
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: 16,
            ),
            CategoryGrid(),
            SizedBox(
              height: 16,
            ),
            Carousel(
              iconSlides: false,
              buttonSlides: false,
            ),
            Carousel(
              iconSlides: false,
              buttonSlides: true,
            ),
            Carousel(
              iconSlides: true,
              buttonSlides: false,
            ),
          ],
        ),
      ),
    );
  }
}
