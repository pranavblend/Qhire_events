import 'package:flutter/material.dart';
import 'package:jobminiproject/view/Event/Upcoming.dart';
import 'package:jobminiproject/view/Event/cancelled.dart';

class TabbarPage extends StatefulWidget {
  const TabbarPage({super.key});

  @override
  State<TabbarPage> createState() => _TabbarPageState();
}

class _TabbarPageState extends State<TabbarPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Event',style: TextStyle(
            fontWeight: FontWeight.bold
          ),),backgroundColor: Colors.grey.withOpacity(.1),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60.0),
            child: Container(
              color: Colors.grey.withOpacity(.1),
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TabBar(
                indicator: BoxDecoration(
                  color: Color.fromRGBO(232, 143, 27, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorPadding: EdgeInsets.symmetric(horizontal: 16.0),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                unselectedLabelStyle: TextStyle(
                  decoration: TextDecoration.none,
                ),
                dividerColor: Colors.transparent,
                tabs: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black.withOpacity(.1),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('Upcoming',style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),)),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black.withOpacity(.1),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text('Cancelled',style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),)),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Upcomingui(),
            Cancelled(),
          ],
        ),
      ),
    );
  }
}

class UpcomingTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Center(
        child: Text(
          'Upcoming Tab Content',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class CancelledTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.redAccent,
      child: Center(
        child: Text(
          'Cancelled Tab Content',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}