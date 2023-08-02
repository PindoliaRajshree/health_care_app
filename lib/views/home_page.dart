import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:health_care_app/models/Lessons.dart';
import 'package:health_care_app/models/Programs.dart';
import 'package:health_care_app/views/widgets/custom_events.dart';
import 'package:health_care_app/views/widgets/custom_lessons.dart';
import 'package:health_care_app/views/widgets/custom_program.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Items>? programs;
  List<Item>? lessons;
  var width, height;

  @override
  void initState() {
    super.initState();
    getPrograms();
    getLessons();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            width: width,
            height: height,
            child: ListView(
              children: [
                Container(
                  height: 285,
                  color: Color.fromRGBO(238, 243, 253, 1),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 40,
                        left: 13,
                        child: Image.asset(
                          'assets/images/Menu.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 57,
                        child: Image.asset(
                          'assets/images/messages.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Positioned(
                        top: 40,
                        right: 13,
                        child: Image.asset(
                          'assets/images/Notification.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      Positioned(
                        top: 88,
                        left: 16,
                        child: Text(
                          'Hello, Priya!',
                          style: TextStyle(
                            color: Color.fromRGBO(8, 9, 10, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            fontFamily: 'Lora',
                            letterSpacing: -0.1,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16,
                        top: 116,
                        child: Text(
                          'What do you wanna learn today?',
                          style: TextStyle(
                            letterSpacing: -0.1,
                            color: Color.fromRGBO(109, 116, 122, 1),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: 'Inter',
                          ),
                        ),
                      ),
                      Positioned(
                        top: 164,
                        left: 16,
                        right: 16,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Color.fromRGBO(89, 139, 237, 1),
                                      width: 1),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 24,
                                      child: Image.asset(
                                        'assets/images/programs.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                    Positioned(
                                      left: 60,
                                      child: Text(
                                        'Programs',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(89, 139, 227, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -0.5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Color.fromRGBO(89, 139, 237, 1),
                                      width: 1),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 24,
                                      child: Image.asset(
                                        'assets/images/help-circle.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                    Positioned(
                                      left: 60,
                                      child: Text(
                                        'Get help',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(89, 139, 227, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -0.5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 220,
                        left: 16,
                        right: 16,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Color.fromRGBO(89, 139, 237, 1),
                                      width: 1),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 24,
                                      child: Image.asset(
                                        'assets/images/Book-open.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                    Positioned(
                                      left: 60,
                                      child: Text(
                                        'Learn',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(89, 139, 227, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -0.5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                height: 48,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Color.fromRGBO(89, 139, 237, 1),
                                      width: 1),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      left: 24,
                                      child: Image.asset(
                                        'assets/images/trello.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ),
                                    Positioned(
                                      left: 60,
                                      child: Text(
                                        'DD Tracker',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(89, 139, 227, 1),
                                          fontFamily: 'Inter',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: -0.5,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Programs for you',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontFamily: 'Lora',
                        letterSpacing: -0.1,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        letterSpacing: -0.1,
                        color: Color.fromRGBO(109, 116, 122, 1),
                      ),
                    ),
                    SizedBox(
                      width: 5.75,
                    ),
                    Image.asset(
                      'assets/images/forward.png',
                      width: 13,
                      height: 9.5,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 285,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: programs!.length,
                    itemBuilder: (context, index) {
                      return CustomProgram(
                        items: programs![index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 12,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Events and experiences',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontFamily: 'Lora',
                        letterSpacing: -0.1,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        letterSpacing: -0.1,
                        color: Color.fromRGBO(109, 116, 122, 1),
                      ),
                    ),
                    SizedBox(
                      width: 5.75,
                    ),
                    Image.asset(
                      'assets/images/forward.png',
                      width: 13,
                      height: 9.5,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 295,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: lessons!.length,
                    itemBuilder: (context, index) {
                      return CustomEvents(
                        item: lessons![index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 12,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Lessons for you',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontFamily: 'Lora',
                        letterSpacing: -0.1,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        fontFamily: 'Inter',
                        letterSpacing: -0.1,
                        color: Color.fromRGBO(109, 116, 122, 1),
                      ),
                    ),
                    SizedBox(
                      width: 5.75,
                    ),
                    Image.asset(
                      'assets/images/forward.png',
                      width: 13,
                      height: 9.5,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 295,
                  margin: EdgeInsets.only(left: 16, right: 16),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: lessons!.length,
                    itemBuilder: (context, index) {
                      return CustomLessons(
                        item: lessons![index],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 12,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void getPrograms() async {
    try {
      var response = await Dio()
          .get("https://632017e19f82827dcf24a655.mockapi.io/api/programs");
      if (response.statusCode == 200) {
        print(response.data);
        var list = Programs.fromJson(response.data);
        setState(() {
          programs = list.items;
        });
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }

  void getLessons() async {
    try {
      var response = await Dio()
          .get("https://632017e19f82827dcf24a655.mockapi.io/api/lessons");
      if (response.statusCode == 200) {
        print(response.data);
        var list = Lessons.fromJson(response.data);
        setState(() {
          lessons = list.items;
        });
      } else {
        print(response.statusCode);
      }
    } catch (e) {
      print(e);
    }
  }
}
