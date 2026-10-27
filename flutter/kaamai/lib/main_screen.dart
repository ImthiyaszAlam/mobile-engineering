import 'package:flutter/material.dart';
import 'package:kaamai/features/home/home_screen.dart';
import 'package:kaamai/features/report/report_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.onThemeToggle});

  final ValueChanged<Brightness> onThemeToggle;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    final screens = [
      HomeScreen(onThemeToggle: widget.onThemeToggle),
      const ReportScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kaamai'),
            Text('Your personal assistant', style: TextStyle(fontSize: 12)),
          ],
        ),
        actions: [
          IconButton(
            tooltip: brightness == Brightness.dark
                ? 'Switch to light theme'
                : 'Switch to dark theme',
            icon: Icon(
              brightness == Brightness.dark
                  ? Icons.light_mode_outlined
                  : Icons.dark_mode_outlined,
            ),
            onPressed: () => widget.onThemeToggle(brightness),
          ),
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Notifications clicked')),
              );
            },
          ),
        ],
      ),

      drawer: Drawer(
        width: 280,
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 120,
              child: DrawerHeader(
                margin: EdgeInsets.zero,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'KaamAI',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Text(
                      'Your AI-powered work assistant',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                setState(() => selectedIndex = 0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Report'),
              onTap: () {
                setState(() => selectedIndex = 1);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),

      body: IndexedStack(index: selectedIndex, children: screens),

      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_outlined),
            selectedIcon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.assessment_outlined),
            selectedIcon: Icon(Icons.assessment),
            label: 'Report',
          ),
        ],
      ),
    );
  }
}
