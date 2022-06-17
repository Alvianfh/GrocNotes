import 'package:flutter/material.dart';
import 'package:notes/screen/home.dart';
import 'package:notes/screen/point.dart';
import 'package:notes/screen/reminder.dart';
import 'package:notes/screen/shop.dart';
import 'package:supercharged/supercharged.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: '1E2F97'.toColor(),
      child: ListView(
        // Remove padding
        padding: EdgeInsets.all(10.0),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "GrocNotes",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Notes',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 15),
            ),
            onTap: () => Home(),
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            title: Text('Reminder',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 15)),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Reminder()),
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            title: Text('Shop',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 15)),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Shop()),
            ),
          ),
          Divider(
            color: Colors.white,
          ),
          ListTile(
            title: Text('Point',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 15)),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => Point()),
            ),
          ),
          // Divider(
          //     color: Colors.white,
          // ),
          // ListTile(
          //   title: Text('Settings',
          //       style: TextStyle(
          //           color: Colors.white,
          //           fontWeight: FontWeight.w300,
          //           fontSize: 15)),
          //   onTap: () => null,
          // ),
        ],
      ),
    );
  }
}
