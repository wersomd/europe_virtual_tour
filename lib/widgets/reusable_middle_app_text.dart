import 'package:flutter/material.dart';

import 'reusable_text.dart';

class MiddleAppText extends StatelessWidget {
  const MiddleAppText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.only(top: size.height * 0.045),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: text,
            size: 19,
            color: theme.textTheme.bodyMedium!.color ?? Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}
