import 'package:day_tabbar/page1.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: TabBar(
                indicatorPadding: EdgeInsets.symmetric(horizontal: 50),

                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.directions_car,
                    color: Colors.red,
                  )),
                  Tab(icon: Icon(Icons.directions_transit, color: Colors.red)),
                  Tab(icon: Icon(Icons.directions_bike, color: Colors.red)),
                  Tab(icon: Icon(Icons.ac_unit, color: Colors.red)),
                ],
              ),
            ),
            Expanded(
              flex: 8,
              child: const TabBarView(
                children: [
                  Icon(Icons.directions_car),
                  Icon(Icons.directions_transit),
                  Icon(Icons.directions_bike),
                  Page1(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
