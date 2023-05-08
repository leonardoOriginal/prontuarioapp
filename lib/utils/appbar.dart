import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;
  final VoidCallback onIconPressed;
  final double height;

  const MyAppBar({
    Key? key,
    required this.title,
    required this.icon,
    required this.onIconPressed,
    this.height = kToolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      centerTitle: true,
      leading: Container(),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(0, 168, 150, 100), Color.fromRGBO(0, 168, 150, 100)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Align(
        alignment: Alignment.center,
        child: Image.asset(
          'images/logo_vidaleve.png',
          fit: BoxFit.scaleDown,
          width: 70.0,
          height: 70.0,
        ),
      ),
      ),
      actions: [
        IconButton(
          onPressed: onIconPressed,
          icon: const Icon(
            Icons.menu,
            size: 28.0,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
