import 'package:flutter/material.dart';
import 'package:health_care_app/views/home_page.dart';
import 'package:health_care_app/views/widgets/top_indicator.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> with TickerProviderStateMixin {
  var width, height;
  late TabController tabController;
  int? _currentIndex;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    _currentIndex = 0;
  }

  List<Widget> _widgets = [
    HomePage(),
    Text('Learn'),
    Text('Hub'),
    Text('Chat'),
    Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: TabBarView(
          children: _widgets,
          controller: tabController,
        ),
        bottomNavigationBar: Container(
          height: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.white,
          ),
          child: TabBar(
            physics: NeverScrollableScrollPhysics(),
            onTap: (val) {
              setState(() {
                _currentIndex = val;
              });
            },
            controller: tabController,
            tabs: [
              Tab(
                icon: ImageIcon(
                  AssetImage('assets/images/home.png'),
                  color: _currentIndex == 0
                      ? Color.fromRGBO(89, 139, 237, 1)
                      : Color.fromRGBO(147, 156, 163, 1),
                ),
                text: 'Home',
              ),
              Tab(
                icon: ImageIcon(
                  AssetImage('assets/images/Book-open.png'),
                  color: _currentIndex == 1
                      ? Color.fromRGBO(89, 139, 237, 1)
                      : Color.fromRGBO(147, 156, 163, 1),
                ),
                text: 'Learn',
              ),
              Tab(
                icon: ImageIcon(
                  AssetImage('assets/images/hub.png'),
                  color: _currentIndex == 2
                      ? Color.fromRGBO(89, 139, 237, 1)
                      : Color.fromRGBO(147, 156, 163, 1),
                ),
                text: 'Hub',
              ),
              Tab(
                icon: ImageIcon(
                  AssetImage('assets/images/chat.png'),
                  color: _currentIndex == 3
                      ? Color.fromRGBO(89, 139, 237, 1)
                      : Color.fromRGBO(147, 156, 163, 1),
                ),
                text: 'Chat',
              ),
              Tab(
                icon: Icon(
                  Icons.person_pin,
                  color: _currentIndex == 4
                      ? Color.fromRGBO(89, 139, 237, 1)
                      : Color.fromRGBO(147, 156, 163, 1),
                ),
                text: 'Profile',
              ),
            ],
            unselectedLabelColor: Color.fromRGBO(147, 156, 163, 1),
            unselectedLabelStyle: TextStyle(
              fontFamily: 'Inter',
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
            labelStyle: TextStyle(
              fontFamily: 'Inter',
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
            labelColor: Color.fromRGBO(89, 139, 237, 1),
            indicator: TopIndicator(),
          ),
        ),
      ),
    );
  }
}
