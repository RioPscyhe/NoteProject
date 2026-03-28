import 'package:flutter/material.dart';

void main() {
  runApp(const NotableApp());
}

class NotableApp extends StatelessWidget {
  const NotableApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainNavigation(),
    );
  }
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    NotesScreen(),
    TodoScreen(),
    CalendarScreen(),
    TimerScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.note), label: 'Notes'),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_circle),
            label: 'To-Do',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Timer'),
        ],
      ),
    );
  }
}

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Notes Screen",
              style: TextStyle(fontSize: 24, fontFamily: 'ComicNeue'),
            ),
            Image(image: AssetImage('assets/note-bg.avif')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Add note tapped')));
        },
        tooltip: 'Add note',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TodoScreen extends StatelessWidget {
  const TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "To-Do Screen",
        style: TextStyle(fontSize: 24, fontFamily: 'ComicNeue'),
      ),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Calendar Screen",
        style: TextStyle(fontSize: 24, fontFamily: 'ComicNeue'),
      ),
    );
  }
}

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Timer Screen",
        style: TextStyle(fontSize: 24, fontFamily: 'ComicNeue'),
      ),
    );
  }
}
