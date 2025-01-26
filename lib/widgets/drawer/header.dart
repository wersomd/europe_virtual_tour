import 'package:flutter/material.dart';

class CustomDrawerHeader extends StatelessWidget {
  final bool isCollapsed;

  const CustomDrawerHeader({
    super.key,
    required this.isCollapsed,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.map_outlined,
            size: 30,
            color: Colors.white,
          ),
          if (isCollapsed) const SizedBox(width: 10),
          if (isCollapsed)
            const Expanded(
              flex: 3,
              child: Text(
                'Europe tour',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                maxLines: 1,
              ),
            ),
          if (isCollapsed) const Spacer(),
          if (isCollapsed)
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
