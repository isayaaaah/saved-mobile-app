import 'package:flutter/material.dart';
import 'package:prototype1/main.dart';
import 'package:prototype1/screens/home/contentsreal.dart';
import 'package:prototype1/screens/home/home.dart';
import 'package:prototype1/screens/home/contents.dart';
import 'package:prototype1/screens/home/search.dart';
import 'package:page_transition/page_transition.dart';

class guides extends StatefulWidget {
  //const guides({Key? key}) : super(key: key);

  @override
  State<guides> createState() => _guidesState();
}

class _guidesState extends State<guides> with RouteAware{

  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);


    double width = MediaQuery.of(context).size.width;


    return Scaffold(
        appBar: AppBar(
          title: const Text('Guides'),
          backgroundColor: primaryColor,
          bottomOpacity: 0.0,
          elevation: 0.0,
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => searchBar()));
              },
            )
          ],
        ),
        body: Material(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.only(top: 18),
            child: Column(
              children: [
                Container(
                  child: Text('Different Guides',
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
                        builder: (context)=> firstAid(),
                      ));

                    },
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        leading: Container(
                          child: Icon(Icons.menu_book_rounded, color: primaryColor),
                        ),
                        title: Text(
                          "First Aid",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                        ),
                        trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                    )
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=> comIllness(),
                      ));
                    },
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        leading: Container(
                          child: Icon(Icons.menu_book_rounded, color: primaryColor),
                        ),
                        title: Text(
                          "Common Illnesses",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                        ),
                        trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                    )
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=> bones(),
                      ));
                    },
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        leading: Container(
                          child: Icon(Icons.menu_book_rounded, color: primaryColor),
                        ),
                        title: Text(
                          "Bones and Muscles",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                        ),
                        trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                    )
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=> chemicals(),
                      ));
                    },
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        leading: Container(
                          child: Icon(Icons.menu_book_rounded, color: primaryColor),
                        ),
                        title: Text(
                          "Swallow Chemicals",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                        ),
                        trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                    )
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=> procedures(),
                      ));
                    },
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        leading: Container(
                          child: Icon(Icons.menu_book_rounded, color: primaryColor),
                        ),
                        title: Text(
                          "Procedures",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                        ),
                        trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                    )
                ),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context)=> disasters(),
                      ));
                    },
                    child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                        leading: Container(
                          child: Icon(Icons.menu_book_rounded, color: primaryColor),
                        ),
                        title: Text(
                          "Natural Disasters",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                        ),
                        trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                    )
                ),

              ],
            ),
          ),
        )
    );
  }
}

/*FIRST AID*/
class firstAid extends StatelessWidget {
  //const firstAid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);


    double width = MediaQuery.of(context).size.width;
    double widthHalf = MediaQuery.of(context).size.width/2;
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Aid'),
        backgroundColor: primaryColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => searchBar()));
            },
          )
        ],
      ),
      body: Material(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> firstaid(),
                  ));
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color:primaryColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)
                            )

                        ),
                        width: width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 6),
                              padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                ),
                              ),
                              child: Text('SET UP YOUR FIRST KIT',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                              ),
                            ),
                            Divider(
                              color: Colors.white,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                ),
                              ),
                              child: Text('Click here',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 10),
                child: Text('Different types of first aid',
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
                      builder: (context)=> cutReal(),
                    ));
                    /*
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeftJoined,
                        childCurrent: firstAid(),
                        duration: Duration(milliseconds: 600),
                        reverseDuration: Duration(milliseconds: 600),
                        child: guides()

                    ));*/
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Cut / Scrape",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> burnReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Burn",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> splinterReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Splinter",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> insectReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Insect Bite / Sting",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> sunburnReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Sunburn",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> nosebleedReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Nosebleed",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> chokingReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Choking",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> drowningReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Drowning",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> electricshockReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Electric Shock",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> heartattackReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Heart Attack",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> shrapnelReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Shrapnel",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> headinjuryReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Head Injury",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> seizureReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Seizure",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> rabiesReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Rabies",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),

            ],
          ),
        ),
      )
    );
  }
}

/*COMMON ILLNESS*/
class comIllness extends StatelessWidget {
  //const comIllness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Illnesses'),
        backgroundColor: primaryColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => searchBar()));
            },
          )
        ],
      ),
      body: Material(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 18),
          child: Column(
            children: [
              Container(
                child: Text('Different types of Common Illnesses',
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
                      builder: (context)=> commoncoldReal(),
                    ));
                    /*
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> cutReal(),
                    ));

                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeftJoined,
                        childCurrent: firstAid(),
                        duration: Duration(milliseconds: 600),
                        reverseDuration: Duration(milliseconds: 600),
                        child: guides()

                    ));*/
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Common Cold",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> coughReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Cough",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> fluReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Flu",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> headacheReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Headache",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> diarrheaReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Diarrhea",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> allergicreactionReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Allergic Reaction",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),

              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> stomachacheReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Stomachache",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> chickenpoxReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Chickenpox",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> constipationReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Constipation",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> rashesReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Rashes",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> handfootmouthReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Hand, Foot, and Mouth Disease",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> soreeyesReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Sore Eyes",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> asthmaReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Asthma",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),

            ],
          ),
        ),
      )
    );
  }
}

/*BONES AND MUSCLES*/
class bones extends StatelessWidget {
  //const bones({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bones and Muscles'),
        backgroundColor: primaryColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => searchBar()));
            },
          )
        ],
      ),
      body: Material(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 18),
          child: Column(
            children: [
              Container(
                child: Text('Different types of injury',
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
                      builder: (context)=> fractureReal(),
                    ));
                    /*
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeftJoined,
                        childCurrent: firstAid(),
                        duration: Duration(milliseconds: 600),
                        reverseDuration: Duration(milliseconds: 600),
                        child: guides()

                    ));*/
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Fractures",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> sprainReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Sprain / Strain",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> tearReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Tears",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> dislocationReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Dislocation",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> limpReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Limp",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
            ],
          ),
        ),
      )
    );
  }
}

/*SWALLOW CHEMICALS*/
class chemicals extends StatelessWidget {
  //const chemicals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swallow Chemicals'),
        backgroundColor: primaryColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => searchBar()));
            },
          )
        ],
      ),
      body: Material(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 18),
          child: Column(
            children: [
              Container(
                child: Text('Different types of swallow chemicals',
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
                      builder: (context)=> gunpowderReal(),
                    ));
                    /*
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeftJoined,
                        childCurrent: firstAid(),
                        duration: Duration(milliseconds: 600),
                        reverseDuration: Duration(milliseconds: 600),
                        child: guides()

                    ));*/
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Gunpowder",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> detergentReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Detergent",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> bleachReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Bleach",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> soapshampooReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Soap / Shampoo",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> rubbingalcoholReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Rubbing Alcohol",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),

            ],
          ),
        ),
      )
    );
  }
}

/*PROCEDURES*/
class procedures extends StatelessWidget {
  //const procedures({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Procedures'),
        backgroundColor: primaryColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => searchBar()));
            },
          )
        ],
      ),
      body: Material(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.only(top: 18),
          child: Column(
            children: [
              Container(
                child: Text('Different procedures to save lives',
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
                      builder: (context)=> cprReal(),
                    ));
                    /*
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeftJoined,
                        childCurrent: firstAid(),
                        duration: Duration(milliseconds: 600),
                        reverseDuration: Duration(milliseconds: 600),
                        child: guides()

                    ));*/
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Cardiopulmonary Resuscitation (CPR)",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> heimlichReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Heimlich Maneuver",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> ricemethodReal(),
                    ));
                    /*
                    Navigator.of(context).push(PageTransition(
                        type: PageTransitionType.rightToLeftJoined,
                        childCurrent: firstAid(),
                        duration: Duration(milliseconds: 600),
                        reverseDuration: Duration(milliseconds: 600),
                        child: guides()

                    ));*/
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Rest, Ice, Compression, Elevation (RICE)",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),

            ],
          ),
        ),
      )
    );
  }
}

/*NATURAL DISASTERS*/
class disasters extends StatelessWidget {
  //const disasters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Natural Disasters'),
        backgroundColor: primaryColor,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => searchBar()));
            },
          )
        ],
      ),
      body: Material(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          //padding: EdgeInsets.only(top: 18),
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> gobag(),
                  ));
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        decoration: BoxDecoration(
                            color:primaryColor,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30)
                            )

                        ),
                        width: width,
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 6),
                              padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                ),
                              ),
                              child: Text('SET UP YOUR GO-BAG',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18
                              ),
                              ),
                            ),
                            Divider(
                              color: Colors.white,
                              endIndent: 20,
                              indent: 20,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 6,horizontal: 10),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10)
                                ),
                              ),
                              child: Text('Click here',style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15
                              ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Text('Different types of natural disasters',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                  ),
                ),
                width: width,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 20),
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> typhoonReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Typhoon",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> earthquakeReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Earthquake",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> volcaniceruptionReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Volcanic Eruption",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> landslideReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "Landslide",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> elninoReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "El Niño",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),
              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context)=> laninaReal(),
                    ));
                  },
                  child: ListTile(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      leading: Container(
                        child: Icon(Icons.menu_book_rounded, color: primaryColor),
                      ),
                      title: Text(
                        "La Niña",style: TextStyle(color: primaryColor,fontWeight: FontWeight.bold),
                      ),
                      trailing:Icon(Icons.keyboard_arrow_right, color: primaryColor, size: 30.0)
                  )
              ),

            ],
          ),
        ),
      )
    );
  }
}


