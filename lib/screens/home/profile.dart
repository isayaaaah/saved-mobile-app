import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:prototype1/screens/home/home.dart';
import 'dart:io';
import 'dart:async';

import 'package:prototype1/services/auth.dart';


class profileTab extends StatefulWidget {
  //const profileTab({Key? key}) : super(key: key);

  @override
  State<profileTab> createState() => _profileTabState();
}

class _profileTabState extends State<profileTab> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController birthdayController = new TextEditingController();
  final TextEditingController cellnumberController = new TextEditingController();

  String? myName;
  String? myBday;
  String? myEmail;
  String? myNumber;

  int? scoreQuiz = 0;
  int? scoreGame = 0;

  _fetchName() async{
    final firebaseUser = await FirebaseAuth.instance.currentUser;
    if(firebaseUser != null)
      await FirebaseFirestore.instance.collection('saved').doc(firebaseUser.uid).get().then((ds) {
        myName = ds.data()!['name'];
        myBday = ds.data()!['birthday'];
        myEmail = ds.data()!['email'];
        myNumber = ds.data()!['cellnumber'];
        scoreGame = ds.data()!['scoreGame'];
        scoreQuiz = ds.data()!['scoreQuiz'];


        nameController.text = myName.toString();
        emailController.text = myEmail.toString();
        birthdayController.text = myBday.toString();
        cellnumberController.text = myNumber.toString();

      }).catchError((e){
        print(e);
      });
  }
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    birthdayController.dispose();
    cellnumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF393E46),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: _fetchName(),
              builder: (context,snapshot){
                return Text('');
              },
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  child: Text('Username'),
                ),
                Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          maxLength: 15,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'^[a-zA-Z0-9]+$')),
                          ],
                          //enabled: !isLoading,
                          controller: nameController,
                          //initialValue: nameController.text,
                          textInputAction: TextInputAction.next,
                          //onEditingComplete: () => node.nextFocus(),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00ADB5)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00ADB5)),
                            ),
                            counterText: "",
                            hintText: "Username",
                            hintStyle: GoogleFonts.ptSans(color: Colors.white),
                            floatingLabelBehavior:
                            FloatingLabelBehavior.never,
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter a name';
                            }
                            else if (value.length < 2){
                              return 'Username must be 3 characters and above';
                            }
                          },
                        ),
                      ),
                    )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('Email'),
                ),
                Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          autofillHints: [AutofillHints.email],
                          style: TextStyle(color: Colors.white),
                          maxLength: 15,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,

                          controller: emailController,
                          textInputAction: TextInputAction.next,
                          //onEditingComplete: () => node.nextFocus(),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00ADB5)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00ADB5)),
                            ),
                            counterText: "",
                            hintText: "Email",
                            hintStyle: GoogleFonts.ptSans(color: Colors.white),
                            floatingLabelBehavior:
                            FloatingLabelBehavior.never,
                          ),
                          validator: (value) => !EmailValidator.validate(value!)? 'Enter a Valid Email':null,
                        ),
                      ),
                    )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text('Birthday'),
                ),
                Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: SizedBox(
                        width: 200,
                        child: TextFormField(
                          readOnly: true,
                          //autofillHints: [AutofillHints.email],
                          style: TextStyle(color: Colors.white),
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
                          //maxLength: 15,
                          //maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          //enabled: !isLoading,
                          keyboardType: TextInputType.phone,
                          controller: birthdayController,
                          textInputAction: TextInputAction.next,
                          //onEditingComplete: () => node.nextFocus(),
                          decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00ADB5)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF00ADB5)),
                            ),
                            //counterText: "",
                            hintText: "Birthday",
                            hintStyle: GoogleFonts.ptSans(color: Colors.white),
                            floatingLabelBehavior:
                            FloatingLabelBehavior.never,
                          ),
                          //validator: (value) => !EmailValidator.validate(value!)? 'Enter a Valid Email':null,
                        ),
                      ),
                    )
                )
              ],
            ),
            ElevatedButton(
                onPressed: () async {
                  final currentUser = await FirebaseAuth.instance.currentUser;

                  final updateUser = FirebaseFirestore.instance
                      .collection('saved').doc(currentUser!.uid).set({
                    'name': nameController.text.trim(),
                    'email': emailController.text.trim(),
                    'birthday': birthdayController.text.trim(),
                    'cellnumber': cellnumberController.text.trim(),
                    'scoreQuiz': scoreQuiz,
                    'scoreGame': scoreGame
                  });


                }, 
                child: Text('Update'))
          ],
        ),
      ),
    );
  }
}

class scoreTab extends StatefulWidget {
  const scoreTab({Key? key}) : super(key: key);

  @override
  State<scoreTab> createState() => _scoreTabState();
}

class _scoreTabState extends State<scoreTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
        )
    );
  }
}

//REAL//


class userProfile extends StatefulWidget {
  //const userProfile({Key? key}) : super(key: key);

  @override
  State<userProfile> createState() => _userProfileState();
}

class _userProfileState extends State<userProfile>
    with SingleTickerProviderStateMixin{
  TabController? _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }

  String? myName;
  String? myNum;
  String? myBday;
  String? myEmail;
  int? myGame;
  int? myQuiz;

  String? myPic;


  _fetchName() async{
    final firebaseUser = await FirebaseAuth.instance.currentUser;
    if(firebaseUser != null)
      await FirebaseFirestore.instance.collection('saved').doc(firebaseUser.uid).get().then((ds) {
        myName = ds.data()!['name'];
        myNum = ds.data()!['cellnumber'];
        myBday = ds.data()!['birthday'];
        myEmail = ds.data()!['email'];
        myGame = ds.data()!['scoreGame'];
        myQuiz = ds.data()!['scoreQuiz'];
        myPic = ds.data()!['profPic'];

        //myScoreGame = ds.data()!['scoreGame'];
        //print(myScoreQuiz);
        // print(myScoreGame);
      }).catchError((e){
        print(e);
      });
  }

  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    final appBar = AppBar(
      backgroundColor: Color(0xFF127050),
      bottomOpacity: 0,
      elevation: 0,
      title: Text(
          'Profile'
      ),
    );

    double width = MediaQuery.of(context).size.width;
    double heightHalf = MediaQuery.of(context).size.height/3;

    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      drawer: NavigationDrawer(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        bottomOpacity: 0,
        elevation: 0,
        title: Text(
          'Profile'
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.mode_edit_outline_rounded),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> sampleProf(),
              ));
            },
          )
        ],
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                //height: screenHeight - appBarHeight - statusBarHeight - 45,
              ),
              Container(
                height: heightHalf,
                width: width,
                margin: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30)
                    )
                ),
              ),

              Positioned(
                  child: Center(
                    child: Column(
                      children:<Widget> [
                        Padding(
                          padding: const EdgeInsets.only(top: 20,left: 20,right: 20,bottom: 10),
                          child: Container(
                            height: 130,
                            width: 130,
                            child: FutureBuilder(
                              future: _fetchName(),
                              builder: (context,snapshot){
                                print(myPic);
                                if(snapshot.connectionState != ConnectionState.done)
                                  return Container(
                                    height: 100,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xFF525252),
                                              Color(0xFF858585)
                                            ]
                                        )
                                    ),
                                  );
                                return CircleAvatar(
                                  radius: 52,
                                  backgroundColor: Colors.white,
                                  child: CircleAvatar(
                                    radius: 60,
                                    backgroundImage: NetworkImage(myPic!),
                                  ),
                                );
                              },
                            ),
                            /*width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 4
                                ),
                                shape: BoxShape.circle,
                                color: Colors.grey,

                            ),*/
                          ),
                        ),

                        Container(
                          child: FutureBuilder(
                            future: _fetchName(),
                            builder: (context,snapshot){
                              if(snapshot.connectionState != ConnectionState.done)
                                return Container(
                                  //margin: EdgeInsets.only(bottom: 10),
                                  height: 30,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(30)),
                                      gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF525252),
                                            Color(0xFF858585)
                                          ]
                                      )
                                  ),
                                );
                              return Text(myName!,style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Container(
                            child: FutureBuilder(
                              future: _fetchName(),
                              builder: (context,snapshot){
                                if(snapshot.connectionState != ConnectionState.done)
                                  return Container(
                                    height: 25,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(30)),
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xFF525252),
                                              Color(0xFF858585)
                                            ]
                                        )
                                    ),
                                  );
                                return Text(myNum!,style: TextStyle(fontSize: 18, color: Colors.white,));
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  )
              ),

            ],

          ),

          // give the tab bar a height [can change hheight to preferred height]
          Container(
            margin: EdgeInsets.symmetric(horizontal: 13),
            height: 70,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(
                25.0,
              ),
            ),
            child: TabBar(
              controller: _tabController,
              // give the indicator a decoration (color and border radius)
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  25.0,
                ),
                color: primaryColor,
              ),
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: [
                // first tab [you can add an icon using the icon property]
                Tab(
                  icon: Icon(Icons.person),
                  text: 'Profile',
                ),

                // second tab [you can add an icon using the icon property]
                Tab(
                  icon: Icon(Icons.auto_stories_rounded),
                  text: 'Others',
                ),
              ],
            ),
          ),
          // tab bar view here
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // first tab bar view widget
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text('EMAIL',style: TextStyle(
                          fontWeight: FontWeight.bold,
                        color: primaryColor
                      ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: FutureBuilder(
                          future: _fetchName(),
                          builder: (context,snapshot){
                            if(snapshot.connectionState != ConnectionState.done)
                              return Container(
                                height: 25,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF525252),
                                          Color(0xFF858585)
                                        ]
                                    )
                                ),
                              );
                            return Text(myEmail!,style: TextStyle(fontSize: 18, color: Colors.black,));
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Text('BIRTHDAY',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: primaryColor
                      ),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: FutureBuilder(
                          future: _fetchName(),
                          builder: (context,snapshot){
                            if(snapshot.connectionState != ConnectionState.done)
                              return Container(
                                height: 25,
                                width: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(30)),
                                    gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF525252),
                                          Color(0xFF858585)
                                        ]
                                    )
                                ),
                              );
                            return Text(myBday!,style: TextStyle(fontSize: 18, color: Colors.black,));
                          },
                        ),
                      ),
                    ),
                  ],
                ),

                // second tab bar view widget
                Column(
                  children: [

                  ],
                ),
              ],
            ),
          ),


        ],
      ),
    );
  }
}

//SECOND REAL//

class sampleProf extends StatefulWidget {
  const sampleProf({Key? key}) : super(key: key);

  @override
  State<sampleProf> createState() => _sampleProfState();
}

class _sampleProfState extends State<sampleProf> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController birthdayController = new TextEditingController();
  final TextEditingController cellnumberController = new TextEditingController();

  String? myName;
  String? myBday;
  String? myEmail;
  String? myNumber;

  int? scoreQuiz = 0;
  int? scoreGame = 0;
  late String myPic;
  String prePic = " ";
  final AuthService _auth = AuthService();

  _fetchName() async{
    final firebaseUser = await FirebaseAuth.instance.currentUser;
    if(firebaseUser != null)
      await FirebaseFirestore.instance.collection('saved').doc(firebaseUser.uid).get().then((ds) {
        myName = ds.data()!['name'];
        myBday = ds.data()!['birthday'];
        myEmail = ds.data()!['email'];
        //myNumber = ds.data()!['cellnumber'];
        //scoreGame = ds.data()!['scoreGame'];
        //scoreQuiz = ds.data()!['scoreQuiz'];
        myPic = ds.data()!['profPic'];
        //prePic = ds.data()!['profPic'];

        nameController.text = myName.toString();
        emailController.text = myEmail.toString();
        birthdayController.text = myBday.toString();
        //cellnumberController.text = myNumber.toString();
        // myScoreGame = ds.data()!['scoreGame'];
        //print(myScoreQuiz);
        //print(myScoreGame);
      }).catchError((e){
        print(e);
      });
  }
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    birthdayController.dispose();
    super.dispose();
  }

  Future pickUploadImage() async {
    final image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
        maxWidth: 512,
        maxHeight: 512,
        imageQuality: 75
    );
    Reference ref = FirebaseStorage.instance.ref().child('profilepic.jpg');
    await ref.putFile(File(image!.path));
    ref.getDownloadURL().then((value) {
      print(value);
      setState(() {
        print(myPic);
        myPic = value;
        prePic = myPic!;
        print(prePic);
      });
    });
  }



  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        bottomOpacity: 0,
        elevation: 0,
        title: Text('Edit your profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: SafeArea(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  FutureBuilder(
                    future: _fetchName(),
                    builder: (context,snapshot){
                      if(snapshot.connectionState != ConnectionState.done)
                        return Container(
                          height:100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF525252),
                                    Color(0xFF858585)
                                  ]
                              )
                          ),
                        );
                      return SizedBox(
                        height: 115,
                        width: 115,
                        child: Stack(
                          clipBehavior: Clip.none,
                          fit: StackFit.expand,
                          children: [
                            CircleAvatar(
                                radius: 45,
                                backgroundImage: NetworkImage(myPic!)
                            ),
                            Positioned(
                                bottom: 0,
                                right: -25,
                                child: RawMaterialButton(
                                  onPressed: () {
                                    pickUploadImage();
                                  },
                                  elevation: 2.0,
                                  fillColor: Color(0xFFF5F6F9),
                                  child: Icon(Icons.camera_alt_outlined, color: Colors.blue,),
                                  padding: EdgeInsets.all(8.0),
                                  shape: CircleBorder(),
                                )),
                          ],
                        ),
                      );
                    },
                    //child: CircleAvatar(
                    //radius: 45,
                    //backgroundImage: NetworkImage(myPic),
                    //),
                  ),
                  SizedBox(height: 40,),
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
                        labelText: "First Name",
                        labelStyle: TextStyle(
                          color: Colors.grey, //<-- SEE HERE
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height:20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: tertiaryColor)
                    ),
                    child: TextFormField(
                      validator: (value) => !EmailValidator.validate(value!)? 'Enter a Valid Email':null,
                      maxLengthEnforcement: MaxLengthEnforcement.enforced,

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

                  SizedBox(height:20),
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

                  SizedBox(height: 80,),

                  FutureBuilder(
                      future: _fetchName(),
                      builder: (context,snapshot){
                        if(snapshot.connectionState != ConnectionState.done)
                          return Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF525252),
                                      Color(0xFF858585)
                                    ]
                                )
                            ),
                          );
                        return GestureDetector(
                          onTap: () async {
                            if(snapshot.connectionState != ConnectionState.done){
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    icon: Icon(Icons.error_rounded,color: Colors.red,),
                                    title: Text('Profile Update Failed'),
                                    content: Text('Check your internet connection'

                                    ),
                                    scrollable: true,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Okay'),)
                                    ],
                                  )
                              );
                            }else if(_formKey.currentState!.validate()){
                              showDialog(
                                  context: context,
                                  builder: (context) => AlertDialog(
                                    icon: Icon(Icons.check_circle,color: Colors.green,),
                                    title: Text('Profile Update Successful'),

                                    scrollable: true,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(15))
                                    ),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('Done'),)
                                    ],
                                  )
                              );
                              myPic = prePic;
                              print(myPic);
                              print(prePic);
                              final currentUser = await FirebaseAuth.instance.currentUser;

                              final updateUser = FirebaseFirestore.instance
                                  .collection('saved').doc(currentUser!.uid).update({
                                'name': nameController.text.trim(),
                                'email': emailController.text.trim(),
                                'birthday': birthdayController.text.trim(),
                                'profPic': myPic
                              });
                            }

                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: tertiaryColor,
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            alignment: Alignment.center,
                            height: 60,
                            width: 150,
                            child: Text('Update Profile',style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                        );
                      }
                      ),


                  SizedBox(height:50)

                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}

