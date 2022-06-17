import 'package:flutter/material.dart';
import 'package:notes/screen/sukses.dart';
import 'package:supercharged/supercharged.dart';

class Promo extends StatefulWidget {
  const Promo({Key? key}) : super(key: key);

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: 'F0F0F0'.toColor(),
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
                  color: 'F0F0F0'.toColor(),
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
                        width: MediaQuery.of(context).size.width / 4.5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          "Promo Saya",
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
              SizedBox(
                height: MediaQuery.of(context).size.height / 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Sukses()),
                  );
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        color: 'FFFFFF'.toColor(),
                        borderRadius: BorderRadius.circular(10.0),

                        // image: DecorationImage(
                        //     image: NetworkImage(
                        //         "https://i.pinimg.com/564x/94/17/82/941782f60e16a9d7f9b4cea4ae7025e0.jpg"),
                        //     fit: BoxFit.cover)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.asset(
                              'assets/images/sayur.png',
                              height: 80,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 25,
                                child: Text(
                                  "Voucher SayurBox",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      //fontFamily: 'Raleway',
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                              SizedBox(
                                child: Text(
                                  "Rp 25.000",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      // fontFamily: 'Raleway',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                          Image.asset(
                            'assets/images/Vector.png',
                            height: 90,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Container(
                    margin: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: 'FFFFFF'.toColor(),
                      borderRadius: BorderRadius.circular(10.0),

                      // image: DecorationImage(
                      //     image: NetworkImage(
                      //         "https://i.pinimg.com/564x/94/17/82/941782f60e16a9d7f9b4cea4ae7025e0.jpg"),
                      //     fit: BoxFit.cover)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Image.asset(
                            'assets/images/sayur.png',
                            height: 80,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 25,
                              child: Text(
                                "Voucher SayurBox",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    //fontFamily: 'Raleway',
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                            SizedBox(
                              child: Text(
                                "Rp 25.000",
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    // fontFamily: 'Raleway',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Image.asset(
                          'assets/images/Vector.png',
                          height: 90,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
