import 'package:flutter/material.dart';
import 'package:training_app/widgets/slider_item.dart';

class Carousel extends StatelessWidget {
  const Carousel(
      {super.key, required this.iconSlides, required this.buttonSlides});
  final bool iconSlides;
  final bool buttonSlides;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Text(
                    "Programs for you",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const Spacer(),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward, size: 16),
                    label: const Text(
                      "View All",
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SliderItem(
                      icon: iconSlides ? Icons.lock_outline : null,
                      buttonLabel: buttonSlides ? "Book" : null,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SliderItem(
                      icon: iconSlides ? Icons.lock_outline : null,
                      buttonLabel: buttonSlides ? "Book" : null,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    SliderItem(
                      icon: iconSlides ? Icons.lock_outline : null,
                      buttonLabel: buttonSlides ? "Book" : null,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
