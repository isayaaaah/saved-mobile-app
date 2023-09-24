import 'dart:ui';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prototype1/game/gameHome.dart';
import 'package:prototype1/screens/home/donate.dart';
import 'package:prototype1/screens/home/feedback.dart';

import 'package:prototype1/screens/home/guides.dart';
import 'package:prototype1/screens/home/homeQuiz.dart';
import 'package:prototype1/screens/home/hotline.dart';
import 'package:prototype1/screens/home/profile.dart';

import 'package:prototype1/screens/home/search.dart';
import 'package:prototype1/screens/home/test.dart';
import 'package:prototype1/screens/home/video.dart';
import 'package:prototype1/screens/licenses/moreHome.dart';
import 'package:prototype1/services/auth.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
    child: Scaffold(
      appBar: AppBar(
        title: const Text(''),
        backgroundColor: const Color(0xFF06283D),
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],

      ),
      body: homeDesign(),
      drawer: NavigationDrawer(),
    ),
  );
}



class homeDesign extends StatefulWidget {
  const homeDesign({Key? key}) : super(key: key);

  @override
  State<homeDesign> createState() => _homeDesignState();
}


class _homeDesignState extends State<homeDesign> {

  String? myName;
  int? myScore;

  _fetchName() async{
    final firebaseUser = await FirebaseAuth.instance.currentUser;
    if(firebaseUser != null)
      await FirebaseFirestore.instance.collection('saved').doc(firebaseUser.uid).get().then((ds) {
        myName = ds.data()!['name'];
        myScore = ds.data()!['scoreQuiz'];
        //myScoreGame = ds.data()!['scoreGame'];
        //print(myScoreQuiz);
        // print(myScoreGame);
      }).catchError((e){
        print(e);
      });
  }



  @override
  Widget build(BuildContext context) {



    final appBar = AppBar(
      title: const Text(''),
      backgroundColor: const Color(0xFF06283D),
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],

    );

    double width = MediaQuery.of(context).size.width;
    double heightHalf = MediaQuery.of(context).size.height/4;

    double lottie = heightHalf;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;

    print(statusBarHeight);
    print(screenHeight);

    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowGlow(); return true;
      },
      child: Material(

        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  Container(
                    height: screenHeight - appBarHeight - statusBarHeight - 27,
                    width: width,
                    color: Colors.white,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: heightHalf + 20),
                    margin: EdgeInsets.only(right: 20,left: 20),
                    child: SizedBox(
                      child: TextField(
                        readOnly: true,
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => searchBar()));
                        },
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: primaryColor
                                )
                            ),
                            prefixIcon: Icon(Icons.search,color: primaryColor),
                            hintText: 'Type',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                                borderSide: BorderSide(
                                    width: 2,
                                    color: primaryColor
                                )
                            )
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: heightHalf + 95),
                    child: Column(
                      children: [
                        Container(
                          child: Text('Features',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),
                          ),
                          width: width,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                        ),
                        GestureDetector(
                            onTap: (){

                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context)=> guides(),
                              ));

                            },
                            child: ListTile(
                                contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                                leading: Container(
                                  child: Icon(Icons.menu_book_rounded, color: primaryColor),
                                ),
                                title: Text(
                                  "Guides",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                                ),
                                trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                            )
                        ),
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context)=> hotlines(),
                              ));
                            },
                            child: ListTile(
                                contentPadding: EdgeInsets.symmetric(horizontal: 20.0,),
                                leading: Container(
                                  child: Icon(Icons.contact_phone_rounded, color: primaryColor),
                                ),
                                title: Text(
                                  "Emergency Hotlines",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                                ),
                                trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                            )
                        ),
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context)=> gameHome(),
                              ));
                            },
                            child: ListTile(
                                contentPadding: EdgeInsets.symmetric(horizontal: 20.0,),
                                leading: Container(
                                  child: Icon(Icons.videogame_asset_rounded, color: primaryColor),
                                ),
                                title: Text(
                                  "Game",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                                ),
                                trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                            )
                        ),
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context)=> homeQuiz(),
                              ));
                            },
                            child: ListTile(
                                contentPadding: EdgeInsets.symmetric(horizontal: 20.0,),
                                leading: Container(
                                  child: Icon(Icons.quiz_rounded, color: primaryColor),
                                ),
                                title: Text(
                                  "Quiz",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                                ),
                                trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                            )
                        ),



                      ],
                    ),
                  ),

                  Positioned(
                    child: (
                        Container(
                          child: Column(
                            children: <Widget>[
                              Container(
                                width: width,
                                padding: EdgeInsets.only(left: 20),
                                child: Text('Welcome to SAVED,',style: TextStyle(fontSize: 12, color: Colors.white),
                                  textAlign: TextAlign.left,),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  //width: width,
                                  padding: EdgeInsets.only(left: 20),
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
                                      return Text(myName!,style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.left,);
                                    },
                                  ),
                                ),
                              ),

                            ],
                          ),
                          height: heightHalf,
                          width: width,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/home.gif'),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)
                            ),
                            color: primaryColor,

                          ),

                        )
                    ),
                  ),


                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}



  class NavigationDrawer extends StatelessWidget {
    //const NavigationDrawer({Key? key}) : super(key: key);

    String? myName;
    String? myEmail;
    String myPic = " ";
    final AuthService _auth = AuthService();
    //final currentUser = FirebaseAuth.instance;

    _fetchName() async{
      final firebaseUser = await FirebaseAuth.instance.currentUser;
      if(firebaseUser != null)
        await FirebaseFirestore.instance.collection('saved').doc(firebaseUser.uid).get().then((ds) {
          myName = ds.data()!['name'];
          myEmail = ds.data()!['email'];
          myPic = ds.data()!['profPic'];
         // myScoreGame = ds.data()!['scoreGame'];
          //print(myScoreQuiz);
          //print(myScoreGame);
        }).catchError((e){
          print(e);
        });
    }

    @override
    Widget build(BuildContext context) => Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );

    Widget buildHeader(BuildContext context) => Material(
      color: const Color(0xFF06283D),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);

          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Home(),
          ));
        },
        child: Container(
          padding: EdgeInsets.only(
              top: 24 + MediaQuery.of(context).padding.top,bottom: 24
          ),
          child: Column(
            children: [
              FutureBuilder(
                future: _fetchName(),
                builder: (context,snapshot){
                  if(snapshot.connectionState != ConnectionState.done)
                    return Container(
                      height: 75,
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
                    radius: 45,
                    backgroundImage: NetworkImage(myPic),
                  );
                },
                //child: CircleAvatar(
                  //radius: 45,
                  //backgroundImage: NetworkImage(myPic),
                //),
              ),
              SizedBox(height: 12,),
              FutureBuilder(
                future: _fetchName(),
                builder: (context,snapshot){
                  if(snapshot.connectionState != ConnectionState.done)
                    return Container(
                      margin: EdgeInsets.only(bottom: 10),
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
                  return Text(myName!,style: TextStyle(fontSize: 28, color: Colors.white));


                },
              ),
              FutureBuilder(
                future: _fetchName(),
                builder: (context,snapshot){
                  if(snapshot.connectionState != ConnectionState.done)
                    return Container(
                      height: 15,
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
                  return Text(myEmail!,style: TextStyle(fontSize: 16, color: Colors.white));


                },
              ),
              //Text('Isiah Esporton',style: TextStyle(fontSize: 28, color: Colors.white),),
              //Text('isiah@gmail.com',style: TextStyle(fontSize: 16, color: Colors.white),),
            ],
          ),
        ),
      )
    );

    Widget buildMenuItems(BuildContext context) => Column(
      children: [
        ListTile(
          leading: const Icon(Icons.home_rounded,color: Color(0xFF06283D)),
          title: const Text('Home'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> Home(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.account_circle_rounded,color: Color(0xFF06283D)),
          title: const Text('Profile'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> userProfile(),
            )
            );
          },
        ),
        const Divider(color: Color(0xFF06283D),endIndent: 5,indent: 5,),
        ListTile(
          leading: const Icon(Icons.menu_book_rounded,color: Color(0xFF06283D)),
          title: const Text('Guides'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> guides(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.contact_phone_rounded,color: Color(0xFF06283D)),
          title: const Text('Emergency Hotlines'),
          onTap: (){
            Navigator.pop(context);
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> hotlines(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.videogame_asset_rounded,color: Color(0xFF06283D)),
          title: const Text('Game'),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> gameHome(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.quiz_rounded,color: Color(0xFF06283D)),
          title: const Text('Quiz'),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> homeQuiz(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.video_library_rounded,color: Color(0xFF06283D)),
          title: const Text('Videos'),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> VideoPlayerPage(),
            ));
          },
        ),
        const Divider(color: Color(0xFF06283D),endIndent: 5,indent: 5,),
        /*
        ListTile(
          leading: const Icon(Icons.settings_rounded,color: Color(0xFF06283D)),
          title: const Text('Settings'),
          onTap: (){},
        ),*/
        ListTile(
          leading: const Icon(Icons.feedback_rounded,color: Color(0xFF06283D)),
          title: const Text('Feedback'),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> feedbackPage(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.monetization_on_rounded,color: Color(0xFF06283D)),
          title: const Text('Donate'),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> donatePage(),
            ));
          },
        ),
        ListTile(
          leading: const Icon(Icons.more_horiz_rounded,color: Color(0xFF06283D)),
          title: const Text('More'),
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context)=> morePage(),
            ));
  
          },
        ),
        const Divider(color: Color(0xFF06283D),endIndent: 5,indent: 5,),
        ListTile(
          leading: const Icon(Icons.logout_rounded,color: Color(0xFF06283D)),
          title: const Text('Logout'),
          onTap: () async {
            await _auth.signOut();
          },
        ),
      ],
    );
  }





