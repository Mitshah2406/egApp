import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:training_app/widgets/lesson_item.dart';
import 'package:training_app/widgets/program_item.dart';

class Carousel extends ConsumerWidget {
  const Carousel(
      {super.key,
      required this.carouselTitle,
      required this.carouselData,
      required this.iconSlides,
      required this.buttonSlides});
  final bool iconSlides;
  final AsyncValue<List> carouselData;
  final bool buttonSlides;
  final String carouselTitle;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Text(
                  carouselTitle,
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
              child: carouselData.when(
                data: (carouselData) {
                  List myData = carouselData.map((e) => e).toList();
                  return Wrap(
                    spacing: 10,
                    children: myData.map((data) {
                      return iconSlides
                          ? LessonItem(
                              lesson: data,
                            )
                          : ProgramItem(program: data);
                    }).toList(),
                  );
                },
                error: (error, stackTrace) => Text(
                  error.toString(),
                ),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
