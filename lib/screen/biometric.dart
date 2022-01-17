import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:notes/screen/home.dart';


class biometric extends StatefulWidget {
  static const String id = "biometric";

  @override
  _biometricState createState() => _biometricState();
}

class _biometricState extends State<biometric> {
  LocalAuthentication _auth = LocalAuthentication();
  //check
  bool _check = false;
  bool _isFinger = false;

   @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text("Notes", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),),
                  SizedBox(height: 20,),
                  Text("Welcome to Notes Application", style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 20
                  ),),
                  SizedBox(height: 10,),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/acc.png')
                  )
                ),
              ),
              
              Column(
                children: <Widget>[
                  Text("Use your fingerprints or face id to unlock your notes", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 15
                  ),),
                  SizedBox(height: 20,),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () async {
                      bool isAuthenticated =
                          await Authentication.authenticateWithBiometrics();

                      if (isAuthenticated) {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      } else{

                      }
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Press to Authentication", style: TextStyle(
                      fontWeight: FontWeight.w600, 
                      fontSize: 18
                    ),),
                  ),
                  SizedBox(height: 50,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
  
}

class Authentication {
  static Future<bool> authenticateWithBiometrics() async {
    final LocalAuthentication localAuthentication = LocalAuthentication();
    bool isBiometricSupported = await localAuthentication.isDeviceSupported();
    bool canCheckBiometrics = await localAuthentication.canCheckBiometrics;

    bool isAuthenticated = false;

    if (isBiometricSupported && canCheckBiometrics) {
      isAuthenticated = await localAuthentication.authenticate(
        localizedReason: 'Please complete the biometrics to proceed.',
        biometricOnly: true,
      );
    }

    return isAuthenticated;
  }
}