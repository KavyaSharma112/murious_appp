import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:murious_appp/models/user.dart';
import 'package:murious_appp/screen/events/events_ui.dart';
import 'package:murious_appp/screen/home/home_ui.dart';
import 'package:murious_appp/screen/my_events/my_events_ui.dart';
import 'package:murious_appp/screen/profile/profile_ui.dart';
import 'package:murious_appp/screen/schedule/schedule_ui.dart';

class Navigation extends StatefulWidget {
  const Navigation({
    Key? key,
    required this.user,
  }) : super(key: key);

  final UserObj user;

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _currentIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomeUi(user: widget.user),
      EventsUi(user: widget.user),
      // EventDescUi(user: widget.user, eventName: '',),
      MyEventUi(),
      ScheduleUi(user: widget.user),
      ProfileUi(),
      // Add more screens as needed
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_currentIndex],
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CurvedNavigationBar(
              height: 60,
              backgroundColor: Colors.transparent,
              color: const Color.fromARGB(200, 63, 5, 96).withOpacity(1),
              animationDuration: const Duration(milliseconds: 300),
              items: const [
                Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                Icon(
                  Icons.list_rounded,
                  color: Colors.white,
                ),
                Icon(
                  Icons.checklist_rounded,
                  color: Colors.white,
                ),
                Icon(
                  Icons.calendar_month_rounded,
                  color: Colors.white,
                ),
                Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ],
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
