import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:prototype1/questionchild/screenchild/welcome/welcome_screen.dart';
import 'package:prototype1/questioncompe/screencompe/welcome/welcome_screen.dart';
import 'package:prototype1/questionnormal/screennormal/quiz/quiz_screen.dart';
import 'package:prototype1/questionnormal/screennormal/welcome/welcome_screen.dart';

import 'package:prototype1/screens/home/score.dart';

class homeQuiz extends StatelessWidget {
  const homeQuiz({Key? key}) : super(key: key);

  //final List<int> scoreNormalTotalDisplay = scoreNormalTotal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_rounded,color: Colors.black,),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    icon: Icon(Icons.info_rounded),
                    title: Text('Information'),
                    content: Text("Competitive Mode\nIt will direct the user in the competitive quiz mode, it includes a total of (30 or 35) questions. Competitive mode can only be played once a day and the user have 60 seconds to answer each question."
                        "\n\nNormal Mode\nIt will direct the user in the normal quiz mode, it includes a total of 20 questions and 60 seconds to answer each one. This mode can be taken repeatedly to improve the knowledge and undersanting about various topics."
                        "\n\nBasic Mode\nThis will direct the user in the basic quiz mode, it includes a total of 10 questions only with 60 seconds to answer each one."),
                    scrollable: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                  )
              );

            },
          )
        ],
      ),
      body: quizDesign(),
    );
  }
}

class quizDesign extends StatelessWidget {
  const quizDesign({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Container(
      width: width,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Container(

              child: Text("Let's Quiz",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              child: Text("Test your knowledge",style: TextStyle(
                fontSize: 18,

              ),
              ),
            ),
          ),
          SizedBox(height: 50,),
          GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=> quizCompe(),
                            ));

                          },
                          child: Text('Proceed')),
                    ],
                    icon: Icon(Icons.warning_rounded),
                    title: Text('Competitive Mode!'),
                    content: Text('The scores you are going to make on this mode can affect your national scores.\n\n'
                        'Do you want to proceed?'

                    ),
                    scrollable: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                  )
              );
            },
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10),
              width: width,
              height:150,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(
                      20
                  )
              ),
              alignment: Alignment.bottomLeft,
              child: Text('COMPETITIVE MODE',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),
              ),

            ),
          ),
          SizedBox(height: 8,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> quizNormal(),
              ));

            },
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10),
              width: width,
              height:100,
              decoration: BoxDecoration(
                  color: secondColor,
                  borderRadius: BorderRadius.circular(
                      20
                  )
              ),
              alignment: Alignment.bottomLeft,
              child: Text('NORMAL MODE',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),
              ),

            ),
          ),
          SizedBox(height: 8,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> quizChild(),
              ));

            },
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10),
              width: width,
              height:100,
              decoration: BoxDecoration(
                  color: tertiaryColor,
                  borderRadius: BorderRadius.circular(
                      20
                  )
              ),
              alignment: Alignment.bottomLeft,
              child: Text('BASIC MODE',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),
              ),

            ),
          ),
          SizedBox(height: 8,),
          GestureDetector(
            onTap: () {
              HapticFeedback.heavyImpact();
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context)=> scoreHome(),
              ));

            },
            child: Container(
              padding: EdgeInsets.only(left: 10,bottom: 10),
              width: width,
              height:70,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(
                      20
                  )
              ),
              alignment: Alignment.bottomLeft,
              child: Text('SCORES',style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2
              ),
              ),

            ),
          ),
        ],
      ),
    );
  }
}

