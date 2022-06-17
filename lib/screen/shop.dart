import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

class Shop extends StatefulWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
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
                        width: MediaQuery.of(context).size.width / 3.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Shop",
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
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: 130,
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: 'C6B69D'.toColor(),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(
                                  5, 3), // changes position of shadow
                            ),
                          ],
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/564x/94/17/82/941782f60e16a9d7f9b4cea4ae7025e0.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 18,
                              width: MediaQuery.of(context).size.width / 1.6,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "GrocNotes Partner",
                                  style: TextStyle(
                                      color: '3C3C3C'.toColor(),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                "Jl. Bintaro Utama No.10",
                                style: TextStyle(
                                    color: 'A1A1A1'.toColor(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: 'A5BECC'.toColor(),
                thickness: 1,
                endIndent: 20,
                indent: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: 130,
                      margin: const EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: 'C6B69D'.toColor(),
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: const Offset(
                                  5, 3), // changes position of shadow
                            ),
                          ],
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://i.pinimg.com/564x/94/17/82/941782f60e16a9d7f9b4cea4ae7025e0.jpg"),
                              fit: BoxFit.fill)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(left: 15),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height / 18,
                              width: MediaQuery.of(context).size.width / 1.6,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "GrocNotes Partner",
                                  style: TextStyle(
                                      color: '3C3C3C'.toColor(),
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 15),
                          child: Row(
                            children: [
                              Text(
                                "Jl. Permai Pamulang , Tangsel",
                                style: TextStyle(
                                    color: 'A1A1A1'.toColor(),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: 'A5BECC'.toColor(),
                thickness: 1,
                endIndent: 20,
                indent: 20,
              ),
            ]),
      ),
    );
  }
}
