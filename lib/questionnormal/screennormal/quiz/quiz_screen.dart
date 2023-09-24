import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prototype1/questionnormal/controllersnormal/question_controller.dart';

import 'components/body.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // Fluttter show the back button automatically
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          ElevatedButton(
              onPressed: _controller.nextQuestion,
              child: Text("Skip",style: TextStyle(color: Colors.black),),
              style: ElevatedButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                elevation: 0,
                primary: Color(0xFFFAFAFA),
                onPrimary: Color(0xFFFAFAFA)
              ),
              ),

        ],
      ),
      body: Body(),
    );
  }
}
