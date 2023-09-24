import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:prototype1/screens/licenses/privacy.dart';

class termsPage extends StatelessWidget {
  //const privacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF06283D),
        bottomOpacity: 0,
        elevation: 0,
        title: Text(
            'Terms and Agreement'
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
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text('     PLEASE READ THESE TERMS AND CONDITIONS '
                      'CAREFULLY BEFORE CONTINUING TO THE APPLICATION.'
                      '\n\nBy using this application, you signify your assent to these Terms and Conditions. If you do not agree to all of these Terms and Conditions, '
                      'do not use the application.'
                      '\n\nSurvival Assistance for Variety of Emergencies and Disasters ("SAVED") reserves the right, at its '
                    'sole discretion, to change, limit, or discontinue any aspect, content, or feature of the application, or any aspect of its use. SAVED '
                    'may revise and update these Terms and Conditions at any time. Your continued usage of the application will mean you accept those changes.',style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('The Site Does Not Provide Medical Advice',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text('     The contents of SAVED, such as text, graphics, images, and other '
                      'materials collected by the developers, as well as other materials contained on '
                      'the application (collectively, "Content"), are intended solely for general educational, '
                      'emergency, and informational reasons. The Content is not meant to be a replacement for expert medical '
                      'guidance, diagnosis, or care. Always consult your doctor or another knowledgeable health provider for '
                      'advice if you have any concerns about a medical condition. Never dismiss or put off obtaining expert '
                      'medical advice because of something you read on the application. Any reliance you place on the applications '
                      'information is totally at your own risk. In the event that these Terms are broken, we are not responsible for '
                      'any losses, expenses, or damages of any kind.',
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Children's Policy",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     We are committed to protecting the privacy of children. "
                      "You should be aware that the application is not intended or designed to attract children "
                      "under the age of 13. We do not collect personally identifiable information from any person we "
                      "actually know is a child under the age of 13.\n\nBy accessing the application, you represent and warrant "
                      "that you meet the eligibility requirements set out above. In the event that you do not meet any of the "
                      "eligibility requirements, SAVED has every right to suspend your use.",
                    style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Terms of Participation & Registration",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     Your ability to participate is expressly conditioned upon your compliance with these Terms and with all policies and guidelines applicable to the application that the developers may make available from time to time."
                      "\n\nEach Registered Account must only be accessed by the individual member whose unique email address was used for registration and may not be accessed by any other individual without the written permission and authorization of Milieu. You agree to notify SAVED immediately when you become aware of or suspect any unauthorized use of your login information or any other breach of security."
                      "\n\nRegistered Account that has been dormant (where the member has not accessed and/or engaged with the application) for a period specified by the notice provided. SAVED will alert users of account termination within a reasonable period before termination occurs.",
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Liability",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     The use of SAVED and its Content is at your own risk."
                      "\n\nWhen using the application, information will be transmitted over a medium that may be beyond the control and jurisdiction of SAVED and its developers. Accordingly, SAVED assumes no liability for or relating to the delay, failure, interruption, or corruption of any data or other information transmitted in connection with the use of the application."
                      "\n\nWithout limiting the foregoing, SAVED and its developer make no representations or assurances about the accuracy, reliability, completeness, currentness, or timeliness of the Content provided on or through the use of the application.",
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("General",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     These Terms including our Privacy Policy constitute the entire agreement between you and SAVED, any prior agreements, arrangements, statements and understandings between you and SAVED."
                      "\n\nSAVED reserves the right to take legal action against you to recover any losses, damage, liabilities, costs or expenses that we suffer or incur as a result of your breach of these Terms and to enforce any right or remedy that we have at law. SAVED’s failure to act with respect to a particular breach does not constitute a general waiver of its right to act with respect to subsequent or similar breaches."
                      "\n\nA person who is not a party to these Terms shall have no right under these Terms. For the avoidance of doubt, any legislation in any relevant jurisdiction giving rights to third parties is hereby excluded."
                      "\n\nAny provision of these Terms that is found to be invalid, unlawful, or unenforceable by applicable law will be severed from these Terms, and the remaining provisions of these Terms will continue to be in full force and effect.",
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Registration and Personal Information",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     You must register to use SAVED. During registration and use of SAVED, you will be required to provide certain personally identifiable information, including your Name,  Phone Number and Email Address. By using SAVED, you agree to disclose the contents of your Personal Data to the developers. You warrant that you have read and understood the Privacy Policy and consent to the collection and processing of your Personal Data, as detailed therein, for access and use. In the event that you do not consent to the provision of your personal data, we will not be able to proceed with the creation of your account."
                      "\n\nThis information is provided solely for general educational, emergency, and informative purposes. Such material should never be taken into account or relied upon as a replacement for medical advice, diagnosis, or treatment. It also shouldn't be interpreted in any way as the provision of healthcare or medical services, or as the practice of medicine or any other profession. Only users with registered Philippine phone numbers are permitted access to and use of SAVED.",
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                          //height: 1.5,
                          fontSize: 17,
                            height: 1.3,
                            color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: '\nYou may obtain more information about our ',
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
                              text: " here. Please don't hesitate to get in touch with us through the application's About page if you have any concerns about our Privacy Policy or the conditions relating to your personal data under these Terms.",
                              style: TextStyle(

                              )),

                        ]
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Termination",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     Please get in touch with SAVED via the About page if you no longer want to be a member. "
                      "Therefore, you understand and accept that once your account is terminated, it cannot be reactivated. "
                      "Any records or scores you have accumulated will be reset when you terminate your account."
                      "\n\nSAVED retains the right to revoke any application at any time and for any reason. "
                      "The termination period will be made known to all users by SAVED. Regardless of the cause, "
                      "SAVED will not be held responsible for any user's failure to receive notification.",
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text("Complete Agreement",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     Your use of the application and any Content is subject to these "
                      "Terms and Conditions as well as the SAVED Privacy Policy, which together make up the"
                      " entire agreement between you and SAVED.Thank you for your cooperation. We hope you find "
                      "SAVED helpful and convenient to use!",
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.3,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
