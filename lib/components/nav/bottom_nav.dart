import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final Function updatePageIndex;
  const BottomNav (this.updatePageIndex, {Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem> [
        BottomNavigationBarItem(
          icon: Icon(Icons.groups_outlined),
          label: 'Golfers',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups_outlined),
          label: 'Tournaments',
          backgroundColor: Colors.deepPurple,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.groups_outlined),
          label: 'Club House',
        ),
      ],
      currentIndex: currentPageIndex,
      onTap: (int index) {
        setState(() {
          currentPageIndex = index;
        });
        widget.updatePageIndex(index);
      },
      selectedItemColor: Colors.deepOrange,
    );
  }
}
