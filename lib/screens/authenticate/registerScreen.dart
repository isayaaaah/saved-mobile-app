import 'package:email_validator/email_validator.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype1/models/user.dart';
import 'package:prototype1/screens/authenticate/loginScreen.dart';
import 'package:prototype1/screens/home/home.dart';
import 'package:prototype1/screens/licenses/privacy.dart';
import 'package:prototype1/screens/licenses/terms.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class RegisterScreen extends StatefulWidget {
  //RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();
  final _formKeyOTP = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController cellnumberController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController otpController = new TextEditingController();
  final TextEditingController birthdayController = new TextEditingController();

  //final TextEditingController scorequizController = new TextEditingController();
  //final TextEditingController scoregameController = new TextEditingController();
  final int scoreQuiz = 0;
  final int scoreGame = 0;
  final String profPic = "https://e7.pngegg.com/pngimages/954/328/png-clipart-computer-icons-user-profile-avatar-heroes-head-thumbnail.png";




  var isLoading = false;
  var isResend = false;
  var isRegister = true;
  var isOTPScreen = false;
  var verificationCode = '';



  //Form controllerscompe
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    nameController.dispose();
    cellnumberController.dispose();
    emailController.dispose();
    otpController.dispose();
    birthdayController.dispose();
    //scorequizController.dispose();
    //scoregameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return isOTPScreen ? returnOTPScreen() : registerScreen();
  }

  Widget registerScreen() {
    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    final node = FocusScope.of(context);
    return SafeArea(
      child: Scaffold(
          backgroundColor: primaryColor,
          key: _scaffoldKey,
          body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
              new Column(
                children: [
                  SizedBox(height: 50,),

                  SizedBox(height: 20,),
                  Container(
                    child: Text('Welcome, New User!',
                        style: GoogleFonts.ptSans(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        )
                    ),
                  ),
                  Container(
                    child: Text('Sign-up to Continue',
                      style: GoogleFonts.ptSans(
                          fontSize: 17,
                          color: Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
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
                                  return 'Please enter a name';
                                }
                                else if (value.length < 2 || value.length > 7){
                                  return 'Username must be 3 to 7 characters';
                                }
                              },
                              maxLengthEnforcement: MaxLengthEnforcement.enforced,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'^[a-zA-Z0-9]+$')),
                              ],
                              controller: nameController,
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.ptSans(color: Colors.white),
                                border: InputBorder.none,
                                labelText: "Username",
                                labelStyle: TextStyle(
                                  color: Colors.grey, //<-- SEE HERE
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
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
                                else if (value.length < 11 || value.length > 11){
                                  return 'Please input 11 characters';
                                }
                              },
                              maxLengthEnforcement: MaxLengthEnforcement.enforced,
                              inputFormatters: [
                                FilteringTextInputFormatter.deny(RegExp(r'^[1-9]+')),
                                FilteringTextInputFormatter.allow(
                                    RegExp('[0-9]')),
                              ],
                              enabled: !isLoading,
                              controller: cellnumberController,
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
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: tertiaryColor)
                            ),
                            child: TextFormField(
                              validator: (value) => !EmailValidator.validate(value!)? 'Enter a Valid Email':null,
                              //maxLengthEnforcement: MaxLengthEnforcement.enforced,

                              controller: emailController,
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.ptSans(color: Colors.white),
                                border: InputBorder.none,
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  color: Colors.grey, //<-- SEE HERE
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: tertiaryColor)
                            ),
                            child: TextFormField(
                              //validator: (value) => !EmailValidator.validate(value!)? 'Enter a Valid Birthday':null,
                              maxLengthEnforcement: MaxLengthEnforcement.enforced,
                              style: TextStyle(
                                  color: Colors.white
                              ),
                              onTap: () async {
                                //DateTime? date = DateTime(1900);
                                //FocusScope.of(context).requestFocus(new FocusNode());

                                final DateTime? date = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(),
                                    firstDate: DateTime.now().subtract(Duration(days: 44149)),
                                    lastDate: DateTime.now().add( Duration(days: 0)));

                                birthdayController.text = date!.toString();
                              },
                              keyboardType: TextInputType.phone,
                              controller: birthdayController,
                              textInputAction: TextInputAction.next,
                              decoration: InputDecoration(
                                hintStyle: GoogleFonts.ptSans(color: Colors.white),
                                border: InputBorder.none,
                                labelText: "Birthday",
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
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 30.0),
                                  child: new GestureDetector(

                                    onTap: () {
                                      if (!isLoading) {
                                        if (_formKey.currentState!.validate()) {
                                          // If the form is valid, we want to show a loading Snackbar
                                          setState(() {
                                            signUp();
                                            isRegister = false;
                                            isOTPScreen = true;
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
                                      //width: 150,
                                      child: Text('Sign Up',style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ),
                                  ))),
                          Container(
                              margin: EdgeInsets.only(top: 15, bottom: 5),
                              alignment: AlignmentDirectional.center,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Already have an account? ",style: TextStyle(
                                      color: Colors.white
                                  ),
                                  ),
                                  InkWell(
                                    child: Text(
                                      'SIGN IN',style: TextStyle(
                                        color: Color(0xFF00ADB5),
                                        fontWeight: FontWeight.bold

                                    ),
                                    ),
                                    onTap: () => {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  LoginScreen()))
                                    },
                                  ),
                                ],
                              )),
                          SizedBox(height: 20,),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            child: RichText(
                              text: TextSpan(
                                  style: TextStyle(
                                      //height: 1.5,
                                      //fontSize: 16,
                                      color: Colors.white),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'By clicking on the button, you have read and agree to the ',
                                        style: TextStyle(

                                        )),
                                    TextSpan(
                                        text: 'Privacy Policy',
                                        style: TextStyle(
                                            color: tertiaryColor,
                                            //fontWeight: FontWeight.bold
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context)=> privacyPage(),
                                            ));
                                          }),
                                    TextSpan(
                                        text: ' and ',
                                        style: TextStyle(

                                        )),
                                    TextSpan(
                                        text: 'Terms and Agreement',
                                        style: TextStyle(
                                          color: tertiaryColor,
                                          //fontWeight: FontWeight.bold
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.of(context).push(MaterialPageRoute(
                                              builder: (context)=> termsPage(),
                                            ));
                                          }),
                                    TextSpan(
                                        text: '.',
                                        style: TextStyle(

                                        )),

                                  ]
                              ),
                            ),
                          ),
                          SizedBox(height: 30,)
                        ],
                      ))
                ],
              )
            ]),
          )),
    );
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
                SizedBox(height: 100,),
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
                            border: Border.all(color: tertiaryColor)),
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
                                border: InputBorder.none,
                                labelText: 'OTP',
                                labelStyle: TextStyle(color: Colors.white)),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter OTP';
                              }
                            },
                          ),
                        ),
                      ],
                    ))
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
                                      await _firestore
                                          .collection('saved')
                                          .doc(
                                          _auth.currentUser!.uid)
                                          .set(
                                          {
                                            'name': nameController
                                                .text
                                                .trim(),
                                            'cellnumber':
                                            cellnumberController
                                                .text
                                                .trim(),
                                            'email':
                                                emailController.text.trim(),
                                            'birthday':
                                              birthdayController.text.trim(),
                                            'scoreGame':0,
                                            'profPic':'https://e7.pngegg.com/pngimages/954/328/png-clipart-computer-icons-user-profile-avatar-heroes-head-thumbnail.png',
                                            'scoreQuizChild': FieldValue.arrayUnion([0]),
                                            'scoreQuizNormal': FieldValue.arrayUnion([0]),
                                            'scoreQuizCompe': FieldValue.arrayUnion([0])
                                          },
                                          SetOptions(
                                              merge:
                                              true)).then(
                                              (value) => {
                                            //then move to authorised area
                                            setState(() {
                                              isLoading =
                                              false;
                                              isResend =
                                              false;
                                            })
                                          }),

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
                            await signUp();
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

  Future signUp() async {
    setState(() {
      isLoading = true;
    });

    debugPrint('Gideon test 1');
    var phoneNumber = '+63 ' + cellnumberController.text.toString();
    debugPrint('Gideon test 2');
    var verifyPhoneNumber = _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (phoneAuthCredential) {
        debugPrint('Gideon test 3');
        //auto code complete (not manually)
        _auth.signInWithCredential(phoneAuthCredential).then((user) async => {
          if (user != null)
            {
              //store registration details in firestore database
              await _firestore
                  .collection('saved')
                  .doc(_auth.currentUser!.uid)
                  .set({
                'name': nameController.text.trim(),
                'cellnumber': cellnumberController.text.trim(),
                'email': emailController.text.trim(),
                'birthday': birthdayController.text.trim(),
                'scoreGame': 0,
                'profPic': 'https://e7.pngegg.com/pngimages/954/328/png-clipart-computer-icons-user-profile-avatar-heroes-head-thumbnail.png',
                'scoreQuizChild': FieldValue.arrayUnion([0]),
                'scoreQuizNormal': FieldValue.arrayUnion([0]),
                'scoreQuizCompe': FieldValue.arrayUnion([0])

              }, SetOptions(merge: true))
                  .then((value) => {
                //then move to authorised area
                setState(() {
                  isLoading = false;
                  isRegister = false;
                  isOTPScreen = false;

                  //navigate to is
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Home(),
                    ),
                        (route) => false,
                  );
                })
              })
                  .catchError((onError) => {
                debugPrint(
                    'Error saving user to db.' + onError.toString())
              })
            }
        });
        debugPrint('Gideon test 4');
      },
      verificationFailed: (FirebaseAuthException error) {
        debugPrint('Gideon test 5');
        setState(() {
          isLoading = false;
        });
      },
      codeSent: (verificationId, [forceResendingToken]) {
        debugPrint('Gideon test 6');
        setState(() {
          isLoading = false;
          verificationCode = verificationId;
        });
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        debugPrint('Gideon test 7');
        setState(() {
          isLoading = false;
          verificationCode = verificationId;
        });
      },
      timeout: Duration(seconds: 60),
    );
    debugPrint('Gideon test 7');
    await verifyPhoneNumber;
    debugPrint('Gideon test 8');
  }
}
