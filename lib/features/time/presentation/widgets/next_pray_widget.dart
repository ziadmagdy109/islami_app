import 'package:flutter/material.dart';

class NextPrayWidget extends StatelessWidget {
  const NextPrayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text("Next Pray - 02:32", style: textTheme.titleMedium),
        SizedBox(width: 75),
        Icon(Icons.volume_off, size: 28),
      ],
    );
  }
}
