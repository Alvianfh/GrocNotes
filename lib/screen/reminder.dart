import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SafeArea(
                child: Container(
                  //margin: EdgeInsets.only(bottom: defaultMargin),
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  height: 100,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      //inisialisasi back button
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                          height: 50,
                          width: 50,
                          // margin: EdgeInsets.only(right: 26),
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/left.png'))),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Reminder",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              //fontFamily: 'Raleway',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Text(
                  "20 April 2022",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                child: Text(
                  "Belanja Bulanan",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: Text(
                  "Mama Lemon",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: Text(
                  "Roti Burger",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                child: Text(
                  "Keju Cheddar",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.5,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      primary: '1E2F97'.toColor(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPrimary: Colors.black,
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 1.5, 60),
                      alignment: Alignment.center),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      'Edit',
                      style: TextStyle(
                          fontSize: 15,
                          color: 'FFFFFF'.toColor(),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        primary: 'FFFFFF'.toColor(),
                        side: BorderSide(color: '1E2F97'.toColor()),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        onPrimary: Colors.black,
                        minimumSize:
                            Size(MediaQuery.of(context).size.width / 1.5, 60),
                        alignment: Alignment.center),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 15,
                            color: '1E2F97'.toColor(),
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
