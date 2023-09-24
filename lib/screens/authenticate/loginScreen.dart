import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype1/screens/authenticate/registerScreen.dart';
import 'package:prototype1/screens/home/home.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class LoginScreen extends StatefulWidget {
  //LoginScreen({Key? key}) : super(key: key);


  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _formKeyOTP = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController numberController = new TextEditingController();
  final TextEditingController otpController = new TextEditingController();

  var isLoading = false;
  var isResend = false;
  var isLoginScreen = true;
  var isOTPScreen = false;
  var verificationCode = '';


  final validCharacters = RegExp(r'^[a-zA-Z_\-=@,\.;]+$');


  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    numberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isOTPScreen ? returnOTPScreen() : returnLoginScreen();
  }

  Widget returnLoginScreen() {
    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
        backgroundColor: primaryColor,
        key: _scaffoldKey,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 80.0,
              height: 80.0,
              alignment: Alignment.center,
              child: Container(
                height: 60,
                width: 50,
                child: Image.asset('assets/logo.png',fit: BoxFit.fill,),
              ),
              decoration: new BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(height: 20,),
            Container(
              child: Text('Welcome!',
                  style: GoogleFonts.ptSans(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
              ),
            ),
            Container(
              child: Text('Sign-in to Continue',
                style: GoogleFonts.ptSans(
                    fontSize: 17,
                    color: Colors.white
                ),
              ),
            ),
            SizedBox(height: 20,),
            Form(
                key: _formKey,
                child: Column(
                  children: [

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: tertiaryColor)
                      ),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter phone number';
                          }
                          else if(value.length < 11){
                            return 'Invalid Format';
                          }else if(value.length > 11){
                            return 'Invalid Format';
                          }
                        },
                        maxLengthEnforcement: MaxLengthEnforcement.enforced,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'^[1-9]+')),
                          FilteringTextInputFormatter.allow(
                              RegExp('[0-9]')),
                        ],
                        enabled: !isLoading,
                        controller: numberController,
                        keyboardType: TextInputType.phone,
                        style: TextStyle(
                            color: Colors.white
                        ),

                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.ptSans(color: Colors.white),
                          border: InputBorder.none,
                          labelText: "Phone Number",
                          labelStyle: TextStyle(
                            color: Colors.grey, //<-- SEE HERE
                          ),

                        ),


                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                        margin: EdgeInsets.only( bottom: 5),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30.0),
                            child: !isLoading
                                ? new GestureDetector(

                              onTap: () async {
                                if (!isLoading) {
                                  if (_formKey.currentState!
                                      .validate()) {
                                    displaySnackBar('Please wait...');
                                    await login();
                                  }
                                }
                              },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: tertiaryColor,
                                        borderRadius: BorderRadius.all(Radius.circular(20))
                                    ),
                                    alignment: Alignment.center,
                                    height: 60,
                                    //width: 150,
                                    child: Text('Sign In',style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  ),
                            )
                                : CircularProgressIndicator(
                              backgroundColor:
                              Theme.of(context).primaryColor,
                            ))),
                    Container(
                        margin: EdgeInsets.only(top: 15, bottom: 5),
                        alignment: AlignmentDirectional.center,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    //horizontal: 10.0
                          ),
                                child: Text(
                                  "Don't have an account? ",style: TextStyle(
                                  color: Colors.white
                                ),
                                )),
                            InkWell(
                              child: Text(
                                'SIGN UP',style: TextStyle(
                                color: Color(0xFF00ADB5),
                                fontWeight: FontWeight.bold

                              ),
                              ),
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegisterScreen()))
                              },
                            ),
                          ],
                        ))
                  ],
                ))
          ],
        ));
  }

  Widget returnOTPScreen() {
    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      backgroundColor: primaryColor,
        key: _scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          actions: [

          ],
        ),
        body: ListView(children: [
          Form(
            key: _formKeyOTP,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 70,),
                Container(
                  child: Text("Verification Code",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  child: Text("We have sent a 6-digit code to your phone number.",style: TextStyle(
                    color: Colors.white60,

                  ),),
                ),
                SizedBox(height: 50,),
                Container(
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Text(
                            !isLoading
                                ? "Enter OTP from SMS"
                                : "Sending OTP code SMS",
                            textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white
                        ),))),
                !isLoading
                    ? Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: tertiaryColor)
                          ),
                            child: TextFormField(
                            style: TextStyle(color: Colors.white),
                            enabled: !isLoading,
                            controller: otpController,
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            initialValue: null,
                            autofocus: true,
                            decoration: InputDecoration(
                                counterText: '',
                              border: InputBorder.none,
                                labelText: 'OTP',
                                labelStyle: TextStyle(color: Colors.white)),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter OTP';
                              }
                            },
                          )),
                        ],
                      ),
                    )
                    : Container(),
                !isLoading
                    ? Container(
                    margin: EdgeInsets.only(top: 40, bottom: 5),
                    child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                        child: new GestureDetector(
                          onTap: () async {
                            if (_formKeyOTP.currentState!.validate()) {
                              // If the form is valid, we want to show a loading Snackbar
                              // If the form is valid, we want to do firebase signup...
                              setState(() {
                                isResend = false;
                                isLoading = true;
                              });
                              try {
                                await _auth
                                    .signInWithCredential(
                                    PhoneAuthProvider.credential(
                                        verificationId:
                                        verificationCode,
                                        smsCode: otpController.text
                                            .toString()))
                                    .then((user) async => {
                                  //sign in was success
                                  if (user != null)
                                    {
                                      //store registration details in firestore database
                                      setState(() {
                                        isLoading = false;
                                        isResend = false;
                                      }),

                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext
                                          context) =>
                                              Home(),
                                        ),
                                            (route) => false,
                                      )

                                    }
                                })
                                    .catchError((error) => {
                                  setState(() {
                                    isLoading = false;
                                    isResend = true;
                                  }),
                                });
                                setState(() {
                                  isLoading = true;
                                });
                              } catch (e) {
                                setState(() {
                                  isLoading = false;
                                });
                              }
                            }
                          },
                          child: new Container(
                            decoration: BoxDecoration(
                                color: tertiaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            alignment: Alignment.center,
                            height: 60,
                            width: 150,
                            child: Text('Submit',style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                        )))
                    : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          CircularProgressIndicator(
                            backgroundColor:
                            Theme.of(context).primaryColor,
                          )
                        ].where((c) => c != null).toList(),
                      )
                    ]),
                isResend
                    ? Container(
                    margin: EdgeInsets.only( bottom: 5),
                    child: Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10.0),
                        child: new InkWell(
                          onTap: () async {
                            setState(() {
                              isResend = false;
                              isLoading = true;
                            });
                            await login();
                          },
                          child: new Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: 15.0,
                            ),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Expanded(
                                  child: Text(
                                    "Resend Code",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,

                                    ),

                                  ),
                                ),
                              ],
                            ),
                          ),
                        )))
                    : Column()
              ],
            ),
          )
        ]));
  }


  void displaySnackBar(String text){
    final snackBar = new SnackBar(content: new Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);

    //_scaffoldKey.currentState?.showSnackBar(new SnackBar(content: new Text(text)));
  }

  Future login() async {
    setState(() {
      isLoading = true;
    });

    var phoneNumber = '+63 ' + numberController.text.trim();

    //first we will check if a user with this cell number exists
    var isValidUser = false;
    var number = numberController.text.trim();

    await _firestore
        .collection('saved')
        .where('cellnumber', isEqualTo: number)
        .get()
        .then((result) {
      if (result.docs.length > 0) {
        isValidUser = true;
      }
    });

    if (isValidUser) {
      //ok, we have a valid user, now lets do otp verification
      var verifyPhoneNumber = _auth.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        verificationCompleted: (phoneAuthCredential) {
          //auto code complete (not manually)
          _auth.signInWithCredential(phoneAuthCredential).then((user) async => {
            if (user != null)
              {
                //redirect
                setState(() {
                  isLoading = false;
                  isOTPScreen = false;
                }),
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Home(),
                  ),
                      (route) => false,
                )
              }
          });
        },
        verificationFailed: (FirebaseAuthException error) {
          displaySnackBar('Validation error, please try again later');
          setState(() {
            isLoading = false;
          });
        },
        codeSent: (verificationId, [forceResendingToken]) {
          setState(() {
            isLoading = false;
            verificationCode = verificationId;
            isOTPScreen = true;
          });
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          setState(() {
            isLoading = false;
            verificationCode = verificationId;
          });
        },
        timeout: Duration(seconds: 60),
      );
      await verifyPhoneNumber;
    } else {
      //non valid user
      setState(() {
        isLoading = false;
      });
      displaySnackBar('Number not found, please sign up first');
    }
  }
}
