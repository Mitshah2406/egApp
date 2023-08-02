import 'package:flutter/material.dart';
import 'package:training_app/models/program.dart';

class ProgramItem extends StatelessWidget {
  const ProgramItem({super.key, required this.program});
  final Program program;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 280,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 4,
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
                padding: const EdgeInsets.only(left: 20, right: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      program.category.name.toUpperCase(),
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      program.name,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      "${program.lesson} Lessons",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 94, 93, 93)),
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
