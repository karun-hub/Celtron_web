import 'package:flutter/material.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ScrollController scrollController;

  ResponsiveAppBar({required this.scrollController});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  void scrollToSection(int index) {
    final positions = [
      0.0, // Home position
      300.0, // About position
      600.0, // Services position
      // Add other positions as needed
    ];

    if (index < positions.length) {
      scrollController.animateTo(
        positions[index],
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            'img/logo1.png',
            height: 40, // Adjust the height as needed
          ),
          SizedBox(width: 16),
          Text('Company Name'), // Company name or logo
        ],
      ),
      actions: [
        TextButton(
          onPressed: () => scrollToSection(0), // Home section
          child: Text('Home'),
        ),
        TextButton(
          onPressed: () => scrollToSection(1), // About section
          child: Text('About'),
        ),
        TextButton(
          onPressed: () => scrollToSection(2), // Services section
          child: Text('Services'),
        ),
        PopupMenuButton<String>(
          onSelected: (value) {
            // Navigate to different pages based on selection
            Navigator.pushNamed(context, value);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: '/product1',
              child: Text('Product 1'),
            ),
            const PopupMenuItem<String>(
              value: '/product2',
              child: Text('Product 2'),
            ),
            // Add more products as needed
          ],
          child: Text('Products'),
        ),
        PopupMenuButton<String>(
          onSelected: (value) {
            // Navigate to different pages based on selection
            Navigator.pushNamed(context, value);
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: '/project1',
              child: Text('Project 1'),
            ),
            const PopupMenuItem<String>(
              value: '/project2',
              child: Text('Project 2'),
            ),
            // Add more projects as needed
          ],
          child: Text('Projects'),
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }
}



