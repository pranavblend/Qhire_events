import 'package:flutter/material.dart';
import 'package:jobminiproject/view/Event/EventTabbar.dart';
import 'package:jobminiproject/view/Home/Homeui.dart';
import 'package:jobminiproject/view/Jobs/Jobsui.dart';
import 'package:jobminiproject/view/Profile/Profile.dart';

class Tabbarui extends StatefulWidget {
  const Tabbarui({super.key});

  @override
  State<Tabbarui> createState() => _TabbaruiState();
}

class _TabbaruiState extends State<Tabbarui> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: TabBarView(
          children: [
            Homescreen(),
            TabbarPage(),
            Jobsui(),
            Profileui(),
          ],
        ),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: TabBar(
            indicator:
            UnderlineTabIndicator(
              borderSide: BorderSide(
                color: Color.fromRGBO(232, 143, 27, 1),
                width: 9.0,
              ),
              insets: EdgeInsets.symmetric(horizontal: 25.0),
            ),
            labelColor: Color.fromRGBO(232, 143, 27, 1),
            unselectedLabelColor: Colors.black.withOpacity(.7),
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.event),
                text: 'Event',
              ),
              Tab(
                icon: Icon(Icons.work),
                text: 'Job',
              ),
              Tab(
                icon: Icon(Icons.person),
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
