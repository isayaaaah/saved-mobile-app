import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class scoreHome extends StatefulWidget {
  const scoreHome({Key? key}) : super(key: key);

  @override
  State<scoreHome> createState() => _scoreHomeState();
}

class _scoreHomeState extends State<scoreHome> {
  @override
  Widget build(BuildContext context) {
    String? myName;


    _fetchName() async{
      final firebaseUser = await FirebaseAuth.instance.currentUser;
      if (firebaseUser != null)
        await FirebaseFirestore.instance.collection('saved').doc(
            firebaseUser.uid).get().then((ds) {
          myName = ds.data()!['name'];
          List.from(ds.data()!['scoreQuizNormal']).forEach((element) {
            finalScoreNormal.add(element);
          List.from(ds.data()!['scoreQuizCompe']).forEach((element) {
            finalScoreCompe.add(element);
          });
          List.from(ds.data()!['scoreQuizChild']).forEach((element) {
              finalScoreChild.add(element);
            });
          });
          //finalScoreQuiz = ds.data()!['scoreQuizNormal'];
        }).catchError((e) {
          print(e);
        });
    }

    double width = MediaQuery.of(context).size.width;
    double heightHalf = MediaQuery.of(context).size.height/3;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scores',style: TextStyle(color: Colors.white),),
        leading: BackButton(color: Colors.white,),
        backgroundColor: primaryColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
              onPressed: () {
                HapticFeedback.heavyImpact();
                finalScore();
              },
              icon: const Icon(Icons.refresh_rounded,color: Colors.white,),),
          IconButton(
            icon: const Icon(Icons.info_rounded,color: Colors.white,),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    icon: Icon(Icons.info_rounded),
                    title: Text('Information'),
                    content: Text("This is the scoreboard, which shows you the scores you got per quiz mode since the normal and basic modes get the average of your attempts while the competitive mode only has one data point since it is only available once."
                        "\n\nTo compute your scores, you need to divide the number of attempts by the sum of your scores."
                        "(Sum of your scores) / (Number of attempts/takes) \n\nExample: \n(17+15+19) / 3 \n51 / 3 \n= 17"

                    ),
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

      body: SafeArea(
        child: Column(
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

                              width: 130,

                            ),
                          ),
                          Text('Your Competitive Score:',style: TextStyle(fontSize: 15, color: Colors.white)),
                          SizedBox(height: 30,),
                          Text('$myScoreCompe',style: TextStyle(fontSize: 70, color: Colors.white, fontWeight: FontWeight.bold)),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3.0),
                              child: FutureBuilder(
                                future: _fetchName(),
                                builder: (context,snapshot){
                                  if(snapshot.connectionState != ConnectionState.done)
                                    return Text("");
                                  return Text("");
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                ),



              ],

            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text('Normal Mode:',style: TextStyle(fontSize: 15, color: Colors.black)),
            ),
            Text('$myScoreNormal',style: TextStyle(fontSize: 70, color: Colors.black, fontWeight: FontWeight.bold)),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text('Basic Mode:',style: TextStyle(fontSize: 15, color: Colors.black)),
            ),
            Text('$myScoreChild',style: TextStyle(fontSize: 70, color: Colors.black, fontWeight: FontWeight.bold)),

          ],
        ),
      ),
    );

  }

  int myScoreNormal = 0;
  int myScoreCompe = 0;
  int myScoreChild = 0;

  final List<int> finalScoreNormal = <int>[];
  final List<int> finalScoreCompe = <int> [];
  final List<int> finalScoreChild = <int> [];

  void finalScore() {
    setState(() {
      //int sum = finalScoreQuiz.fold(0, (sum, element) => sum + element);
      double avgNormal = finalScoreNormal.fold(0, (avg, element) => avg + element / finalScoreNormal.length);
      double avgCompe = finalScoreCompe.fold(0, (avg, element) => avg + element / finalScoreCompe.length);
      double avgChild = finalScoreChild.fold(0, (avg, element) => avg + element / finalScoreChild.length);
      print(avgNormal);
      myScoreNormal = avgNormal.toInt();
      myScoreCompe = avgCompe.toInt();
      myScoreChild = avgChild.toInt();
    });
  }
}
