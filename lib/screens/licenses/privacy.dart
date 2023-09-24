import 'package:flutter/material.dart';

class privacyPage extends StatelessWidget {
  const privacyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF06283D),
        bottomOpacity: 0,
        elevation: 0,
        title: Text(
            'Privacy Policy'
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
                  child: Text("     Survival Assistance for Variety of Emergencies and Disasters ('SAVED') "
                      "is dedicated to protecting our users’ privacy. This Privacy Policy was made to help"
                      " you understand how SAVED manages, gathers, stores, and makes use of the data you give, "
                      "in connection with the application and how you can manage it at any time. "
                      "Please be aware that this Privacy Policy only applies to data that SAVED collects "
                      "as a result of the use of our Service.",style: TextStyle(
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
                  child: Text('Information Collected',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     This section outlines the types of personal information "
                      "that SAVED may get from you when you use the application and/or participate "
                      "in surveys. Additionally, this part also covers the categories of non-personal "
                      "data that the program collects. SAVED's primary objective in collecting your information "
                      "to provide and enhance the Service and to enable you to enjoy its Service.",style: TextStyle(
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
                  child: Text('Information the user provides:',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Personal Information',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     'Personal Information' refers to information"
                      "about you that can be used to contact or identify you."
                      "Depending on the activity, different forms of personal information"
                      "may be collected in line with the Service, including:"
                      "\n\n1. Your Name;\n2. Your Mobile Number;\n3. Your Email Address;\n4. Your Profile Picture",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Non-Personal Information',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     'Non-personal information' is information that, by"
                      "itself, cannot be used to identify or contact you. SAVED may gather non-personal"
                      "information regarding your use of its Service when using the application."
                      "SAVED might also ask you to disclose anonymous information about yourselves, such as but not restricted to:"
                      "\n\n1. Your Date of Birth;\n",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Information we collect when you use our products and services:',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     - Information you enter into the application, such as your name, phone number, and email address, but not only;\n\n"
                      "     - Your login credentials for your account, which may include but is not limited to, your phone number;\n\n"
                      "     - Information about your ideas and usage of the application.",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Use of your Information',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('How SAVED Uses Your Information',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     SAVED may utilize both personal and non-personal information,"
                      "both separately and in combination, to better understand the users behavior"
                      "and preferences, to resolve technical issues, to make sure that its goods and"
                      "services are operating as intended, and to enhance Services and their content."
                      "Furthermore, SAVED may combine anonymous data with personal data, like an email address, "
                      "to manage loyalty programs and customize its services for you.\n\n     The information you supply will "
                      "only be used to provide you with and improve the Service, as well as for any other "
                      "purposes specified herein, and will never be disclosed, rented, lent, leased, sold, or "
                      "otherwise willingly provided to unaffiliated third parties. As long as your account is open "
                      "and active or as long as it's necessary to offer you services, SAVED will keep your information on file.\n\n"
                      "     If SAVED collects Non-Personal Information for an activity that also needs personal information,"
                      "SAVED may integrate non-personal information with their personal information in order to offer them a"
                      "better user experience, improve the value and quality of the Services, and analyze how its Services are used."
                      "The Service may also keep track of game-play details like the length of your game sessions or your best scores.",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('For Research Purposes',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     The information gathered from surveys and engagement polls is summarized statistically."
                      "It won't be applied in a way that makes it possible to identify a specific person."
                      "This means that a person cannot be personally identified based on their responses.\n\n     "
                      "Your personal information might also be used by us for internal tasks like data analysis, "
                      "auditing, and research to enhance SAVED's functionality.",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Disclosure of Your Personal Information',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     You acknowledge and accept that SAVED may be required to disclose any personal information"
                      "if required to do so by law or in the belief that such disclosure is reasonably necessary to avoid liability,"
                      "to comply with legal process, such as but not limited to a subpoena, statute, search warrant, or court order, "
                      "or to protect the property and rights of SAVED or a third party, to ensure the safety of the general public or"
                      "any individual, or to prevent or stop any activity SAVED may deem to be unlawful. It should be noted that SAVED "
                      "is not compelled to object to or challenge the legality of any subpoena, search warrant, or other similar official "
                      "request that it might get.\n\n     "
                      "In addition, SAVED has the right to reveal information about you if it believes that doing so is reasonably necessary "
                      "to uphold the terms and conditions of the Service or to protect its users or operations. ",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Security',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     We shall take reasonable and necessary security precautions after "
                      "receiving your information to guard against unauthorized access, destruction, use, "
                      "alteration, or disclosure.\n\n     "
                      "In order to protect your personal information from accidental loss and from unauthorized access, "
                      "use, alteration, or disclosure, SAVED has implemented appropriate technical and organizational "
                      "security measures. SAVED, however, is unable to guarantee that unauthorized parties won't ever be able "
                      "to get around such safeguards or use your personal information improperly. Please be aware that email and "
                      "chat platforms are not thought to be secure, hence SAVED advises against providing personal data to SAVED through these "
                      "channels. ",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Retention of Information',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     We only retain your personally identifiable information for as long as "
                      "is necessary to fulfill the purposes for which it was collected, used, or disclosed. "
                      "We will stop keeping your information once those purposes, whether commercial or legal, have "
                      "been fulfilled. Other than what is specified in this privacy statement, we will not use information "
                      "for any other reasons. However, we may still keep and use your personally identifiable information that"
                      " has been anonymized.",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Your Rights',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     Regarding the personal information we gather and how it's used, "
                      "you have specific rights. This is intended to provide you additional options and "
                      "control over your personal data.",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Accessing & Updating Your Information',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     You are always entitled to request access to your personal data.\n\n"
                      "     By making the necessary changes to the relevant information on your account, you can always examine, "
                      "update, correct, or delete any personal information. You have the right to request that we update "
                      "any incomplete or outdated information we have about you, including demographic information. Your account "
                      "can be deactivated if you entirely erase its data. In the event that SAVED is not required by law to keep the record, "
                      "it will make an effort to comply with your request to have it removed from its system.",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('About this Privacy Policy',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     By using the Service, you agree to the collection and use of your personal "
                      "information as outlined in this Privacy Policy. SAVED reserves the right to modify this privacy "
                      "statement at any time, and the updated version will be displayed on our platforms. "
                      "The outdated Privacy Policy will take effect unless specifically stated otherwise, and the previous "
                      "version will expire. SAVED reserves the right to determine the Privacy Policies ultimate interpretation "
                      "and is not responsible for any inaccuracies or omissions found within.",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Policy Regarding Persons Under 13',style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     This product is intended for use by those 13 "
                      "years old or older for educational purposes only. Without derogating "
                      "from the foregoing, SAVED does not knowingly collect personal information "
                      "from people under the age of 13. If SAVED learns that a person under the age of 13 "
                      "has provided it with personal information, SAVED will take steps to delete such information "
                      "as soon as possible.",style: TextStyle(
                    fontSize: 17,
                    height: 1.3,
                  ),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,left: 20),
                  alignment: Alignment.centerLeft,
                  child: Text('Contact Us',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                  child: Text("     For any questions or comments about this Privacy Policy or "
                      "any other issue, please contact us at: "
                      "\n\n- deauna.renzjerome@ue.edu.ph;"
                      "\n- descalzo.darelle@ue.edu.ph;"
                      "\n- esporton.isiahcharles@ue.edu.ph;"
                      "\n- hilario.kenjirostephen@ue.edu.ph; or"
                      "\n- santos.danielleanne@ue.edu.ph",style: TextStyle(
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
