import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:flutter/widgets.dart';
import 'package:prototype1/questionnormal/constants.dart';
import 'package:prototype1/questionnormal/controllersnormal/question_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:prototype1/questionnormal/screennormal/welcome/welcome_screen.dart';
import 'package:prototype1/screens/home/home.dart';
import 'package:prototype1/screens/home/homeQuiz.dart';
import 'package:prototype1/services/auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

class qController extends GetxController{

  PageController? _pageController;
  PageController? get pageController => this._pageController;


}

class ScoreScreen extends StatefulWidget{
  const ScoreScreen({Key? key}) : super(key: key);

  @override
  State<ScoreScreen> createState() => _ScoreScreenState();

}

class _ScoreScreenState extends State<ScoreScreen> {


  //final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  List<int> finalScoreQuizNormal = [];

  final AuthService _auth = AuthService();

  _fetchName() async{
    final firebaseUser = await FirebaseAuth.instance.currentUser;
    if(firebaseUser != null)
      await FirebaseFirestore.instance.collection('saved').doc(firebaseUser.uid).get().then((ds) {
        finalScoreQuizNormal = ds.data()!['scoreQuizNormal'];

      }).catchError((e){
        print(e);
      });
  }

  Color primaryColor = Color(0xFF06283D);
  Color secondColor = Color(0xFF256D85);
  Color tertiaryColor = Color(0xFF47B5FF);
  Color subColor = Color(0xFFDFF6FF);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());

    final List<int> scoreNormalTotal = [];
    int score = _qnController.numOfCorrectAnsNormal;
    scoreNormalTotal.add(score);
    print(scoreNormalTotal);


    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text(
                "Score",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(color: kSecondaryColor),
              ),

              SizedBox(height: 40,),
              Text(
                "${_qnController.numOfCorrectAnsNormal}/${_qnController.questions.length}",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: kSecondaryColor),
              ),

              SizedBox(height: 100,),
              FutureBuilder(
                future: _fetchName(),
                builder: (context,snapshot){
                  if(snapshot.connectionState != ConnectionState.done)
                    return Text("");
                  return GestureDetector(
                      onTap: () async {

                        final currentUser = await FirebaseAuth.instance.currentUser;
                        final updateUser = FirebaseFirestore.instance
                            .collection('saved').doc(currentUser!.uid).update({
                          'scoreQuizNormal': FieldValue.arrayUnion([_qnController.numOfCorrectAnsNormal]),
                        });

                        Get.to(WelcomeScreen());
                      },
                      child:  Container(
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.all(Radius.circular(20))
                        ),
                        alignment: Alignment.center,
                        height: 60,
                        width: 150,
                        child: Text('Back Home',style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )

                  );
                },

              )

            ],
          )
        ],
      ),
    );
  }
}
