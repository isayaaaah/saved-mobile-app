import 'package:flutter/material.dart';

class disclaimerPage extends StatelessWidget {
  const disclaimerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF06283D),
        bottomOpacity: 0,
        elevation: 0,
        title: Text(
            'Disclaimer'
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
                  child: Text("     This application does not provide medical advices. All information, including but not limited to, text, graphics, images and other material provided on this application are for educational and informational purposes only. While the developers have taken every precaution to ensure that the contents of this application are both current and accurate, still inaccurate information may occur. No material on this application is intended to be a substitute for professional medical advice, diagnosis or treatment. Always seek the opinion of your physician or another health care practitioner with any questions you may have about a medical condition or treatment before undertaking a new health care regimen, and never disregard professional medical advice or delay in seeking it because of something you have read on this application. Any action you take upon the information on our application is strictly at your own risk.",style: TextStyle(
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
