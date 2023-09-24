import 'package:flutter/material.dart';
import 'package:prototype1/screens/licenses/about.dart';
import 'package:prototype1/screens/licenses/disclaimer.dart';
import 'package:prototype1/screens/licenses/license.dart';
import 'package:prototype1/screens/licenses/privacy.dart';
import 'package:prototype1/screens/licenses/sources.dart';
import 'package:prototype1/screens/licenses/terms.dart';

class morePage extends StatelessWidget {
  //const aboutPage({Key? key}) : super(key: key);

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
            'More about SAVED'
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>aboutPage(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      title: Text(
                        "About",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>sourcesPage(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      title: Text(
                        "Sources",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>disclaimerPage(),
                    ));

                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      title: Text(
                        "Disclaimer",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>termsPage(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      title: Text(
                        "Terms and Agreement",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>privacyPage(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      title: Text(
                        "Privacy Policy",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=>licensePage(),
                    ));

                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      title: Text(
                        "Licenses",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}

