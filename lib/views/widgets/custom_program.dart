import 'package:flutter/material.dart';
import 'package:health_care_app/models/Programs.dart';

class CustomProgram extends StatelessWidget {
  final Items items;

  const CustomProgram({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242,
      height: 280,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(14, 68, 62, 0.08),
            offset: Offset(0, 0),
            spreadRadius: 0,
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 242,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8), topLeft: Radius.circular(8)),
              image: DecorationImage(
                image: AssetImage('assets/images/lifestyle.png'),
              ),
            ),
          ),
          Container(
            width: 242,
            height: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8)),
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 16,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    items.category!.toUpperCase(),
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(89, 139, 237, 1),
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 48,
                  width: 218,
                  child: Text(
                    items.name!,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: -0.1,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  height: 16,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '${items.lesson!} lessons',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color.fromRGBO(109, 116, 122, 1),
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
