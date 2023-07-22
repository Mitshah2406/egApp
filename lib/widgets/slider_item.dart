import 'package:flutter/material.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key, this.icon, this.buttonLabel});
  final IconData? icon;
  final String? buttonLabel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 295,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 0.50, color: Color(0xFFEBEDF0)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            height: 150,
            "assets/images/17924.jpg",
            // width:,

            // fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 12,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 12, right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "LIFESTYLE",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Theme.of(context).colorScheme.primary),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(
                    "A complete guide for your new born baby",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  (icon != null || buttonLabel != null)
                      ? Row(
                          children: [
                            const Text(
                              "16 lessons",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 94, 93, 93)),
                            ),
                            const Spacer(),
                            icon != null
                                ? IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      icon,
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  )
                                : ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4, horizontal: 6),
                                      backgroundColor: Colors.white,
                                      foregroundColor:
                                          Theme.of(context).colorScheme.primary,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        side: BorderSide(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      buttonLabel!,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary),
                                    ),
                                  )
                          ],
                        )
                      : const Text(
                          "16 lessons",
                          style:
                              TextStyle(color: Color.fromARGB(255, 94, 93, 93)),
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
