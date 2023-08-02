import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training_app/providers/main_provider.dart';
import 'package:training_app/widgets/category_grid.dart';
import 'package:training_app/widgets/header.dart';
import 'package:training_app/widgets/carousel.dart';
// import 'package:training_app/widgets/my_app_bar.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final programs = ref.watch(programsProvider);
    final lessons = ref.watch(lessonsProvider);
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const SizedBox(
              height: 16,
            ),
            const CategoryGrid(),
            const SizedBox(
              height: 16,
            ),
            Carousel(
              carouselTitle: "Programs For You",
              iconSlides: false,
              buttonSlides: false,
              carouselData: programs,
            ),
            Carousel(
              carouselTitle: "Events And Experiences",
              iconSlides: false,
              buttonSlides: true,
              carouselData: programs,
            ),
            Carousel(
              carouselTitle: "Lessons For You",
              iconSlides: true,
              buttonSlides: false,
              carouselData: lessons,
            ),
          ],
        ),
      ),
    );
  }
}
