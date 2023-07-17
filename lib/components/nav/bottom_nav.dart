import 'package:flutter/material.dart';

class NavDestination {
  const NavDestination(this.label, this.icon, this.selectedIcon);

  final String label;
  final Widget icon;
  final Widget selectedIcon;
}

const List<NavDestination> destinations = <NavDestination>[
  NavDestination(
    'Golfers',
    Icon(Icons.groups_outlined),
    Icon(Icons.groups),
  ),
  NavDestination(
    'Tournaments',
    Icon(Icons.groups_outlined),
    Icon(Icons.groups),
  ),
  NavDestination(
    'Club House',
    Icon(Icons.groups_outlined),
    Icon(Icons.groups),
  ),
];

class BottomNav extends StatefulWidget {
  final updatePageIndex;
  const BottomNav (this.updatePageIndex, {Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      onDestinationSelected: (int index) {
        setState(() {
          currentPageIndex = index;
        });
        widget.updatePageIndex(index);
      },
      selectedIndex: currentPageIndex,
      destinations: destinations.map(
        (NavDestination destination) {
          return NavigationDestination(
            icon: destination.icon,
            selectedIcon: destination.selectedIcon,
            label: destination.label,
          );
        }
      ).toList(),
    );
  }
}
