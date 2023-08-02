import 'package:flutter/material.dart';
import 'package:training_app/models/lessons.dart';

class LessonItem extends StatelessWidget {
  const LessonItem({super.key, required this.lesson});
  final Lesson lesson;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 320,
      child: Card(
        elevation: 4,
        clipBehavior: Clip.hardEdge,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              height: 150,
              "assets/images/new.jpeg",
              // width:,

              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 8, bottom: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      lesson.category.name.toUpperCase(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      lesson.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Row(
                      children: [
                        Text(
                          "${lesson.duration} mins",
                          style: const TextStyle(
                              color: Color.fromARGB(255, 94, 93, 93)),
                        ),
                        const Spacer(),
                        lesson.locked == true
                            ? const Icon(
                                Icons.lock_outline,
                                color: Color.fromARGB(255, 106, 106, 106),
                              )
                            : const SizedBox.shrink()
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
