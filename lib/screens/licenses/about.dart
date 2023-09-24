import 'package:flutter/material.dart';

class aboutPage extends StatelessWidget {
  const aboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF06283D),
        bottomOpacity: 0,
        elevation: 0,
        title: Text(
            'About'
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('SAVED',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset('assets/logo.png',width: 70,height: 70,),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text('1.0.0',style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('Copyright ${DateTime.now().year} SAVED'),
                ),

                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,bottom: 80,left: 20),
                    child: Text("     Survival Assistance for Variety of Emergencies and Disasters (SAVED) "
                        "is an instructive mobile application that allows you to be informed and prepared "
                        "for possible emergencies that you could encounter. It contains information about "
                        "different kinds of emergencies and detailed step-by-step procedures for applying "
                        "first aid to different kinds of accidents, as well as comprehensive content about natural "
                        "disasters that mainly occur in the Philippines. The app also provides a list of various "
                        "emergency hotlines that are accessible in the Philippines.",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                      textAlign: TextAlign.justify,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
