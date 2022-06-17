import 'package:flutter/material.dart';
import 'package:notes/screen/home.dart';
import 'package:notes/screen/promo.dart';
import 'package:supercharged/supercharged.dart';

class Sukses extends StatefulWidget {
  const Sukses({Key? key}) : super(key: key);

  @override
  State<Sukses> createState() => _SuksesState();
}

class _SuksesState extends State<Sukses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '1E2F97'.toColor(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Text(
                    "Transaksi Berhasil",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        //fontFamily: 'Raleway',
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/images/sukses.png',
                    height: 250,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 35, right: 35, top: 50, bottom: 40),
                  child: Text(
                    "Selamat!! kamu berhasil menukar poin dengan Voucher ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Back To Home',
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
