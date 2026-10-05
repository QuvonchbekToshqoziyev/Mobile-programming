import 'package:flutter/material.dart';

class Task9Navigation extends StatefulWidget {
  const Task9Navigation({super.key});

  @override
  State<Task9Navigation> createState() => _Task9NavigationState();
}

class _Task9NavigationState extends State<Task9Navigation> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.info), text: 'Info'),
            ],
          ),
          const SizedBox(
            height: 120,
            child: TabBarView(
              children: [
                Center(child: Text('Home tab content')),
                Center(child: Text('Info tab content')),
              ],
            ),
          ),
          BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) => setState(() => selectedIndex = index),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          ),
          Text('Bottom tab ${selectedIndex + 1} selected'),
        ],
      ),
    );
  }
}
