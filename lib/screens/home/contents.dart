import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:prototype1/questionnormal/screennormal/quiz/components/option.dart';
import 'package:prototype1/screens/home/contentsreal.dart';
import 'package:prototype1/screens/home/hotline.dart';
import 'package:prototype1/screens/home/search.dart';
import 'package:flutter_tts/flutter_tts.dart';


class cut extends StatefulWidget {
  //const cutReal({Key? key}) : super(key: key);

  final Injury injury;
  cut({required this.injury});

  @override
  State<cut> createState() => _cutState();
}

class _cutState extends State<cut> {

  @override
  Widget build(BuildContext context) {

    final controller = PageController(initialPage: 0);

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    final widgetCut = Container(
      //physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Container(
                height: 1460,
              ),
              Container(
                  height: 280,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.ctfassets.net/yixw23k2v6vo/2i1We9dmgmD7PkpQ3agXDi/583530f5ba221459a9c7611f6282db15/large-04-GettyImages-1138616923.jpg?fm=webp&fit=thumb&q=65&w=824&h=549'
                        )
                        , fit: BoxFit.fill
                    ),
                  )
              ),
              Positioned(
                top: 250,
                child: Container(
                  width: width,
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(
                            left: 15, right: 15, top: 35),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)
                            ),
                            color: Colors.white
                        ),
                        height: 1460,
                        child: Column(
                          children: <Widget>[

                            Container(
                              padding: EdgeInsets.only(top: 10),
                              width: width,
                              child: Text('DESCRIPTION', style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top: 10, bottom: 30),
                              width: width,
                              child: Text(
                                'It refers to a skin wound in which the connective tissue parts have separated and can be cause of bleeding. '
                                    'It can be smooth, deep, or jagged. It could be near the skins surface or deeper which is called as laceration.',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[600],
                                    height: 1.5),
                                textAlign: TextAlign.justify,),
                            ),
                            Divider(
                              color: primaryColor, endIndent: 5, indent: 5,),

                            Container(
                              padding: EdgeInsets.only(top: 30),
                              width: width,
                              child: Text('WHAT TO DO', style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),

                            Container(
                              padding: EdgeInsets.only(top: 10, bottom: 30),
                              child: Column(
                                children: <Widget>[

                                  Container(
                                    child: RichText(
                                      text: TextSpan(
                                          style: TextStyle(
                                              height: 1.5,
                                              fontSize: 16,
                                              color: Colors.black),
                                          children: <TextSpan>[
                                            TextSpan(text: '1.',),
                                            TextSpan(
                                                text: ' Wash your hands ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold
                                                )),
                                            TextSpan(
                                                text: 'with soap and water to prevent infection. \n\n2. To stop the bleeding,'),
                                            TextSpan(
                                                text: ' apply mild pressure ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold
                                                )),
                                            TextSpan(
                                                text: 'to the cut area using clean washcloth or gauze. \n\n3.'),
                                            TextSpan(text: ' Clean the wound',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold
                                                )),
                                            TextSpan(
                                                text: ', clean the area around it, and rinse it under running water. \n\n4.'),
                                            TextSpan(
                                                text: ' Apply a thin layer of petroluem jelly or antibiotic to the wound ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold
                                                )),
                                            TextSpan(
                                                text: 'to keep it moist and help it heal faster. \n\n5. To prevent the wound from reopening, '),
                                            TextSpan(
                                                text: 'cover it with a sterile bandage. ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold
                                                )),
                                            TextSpan(
                                                text: 'Change the wound dressing at least once a day. \n\n6. To reduce pain, '),
                                            TextSpan(
                                                text: 'consider taking an over-the-counter pain reliever ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold
                                                )),
                                            TextSpan(
                                                text: 'such asacetaminophen. \n\n7. '),
                                            TextSpan(
                                                text: 'Make sure your tetanus vaccnination is up-to-date ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold
                                                )),
                                            TextSpan(
                                                text: 'if your cut is from a dirty or rusty object.'),

                                          ]
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              color: primaryColor, endIndent: 5, indent: 5,),

                            Container(
                              padding: EdgeInsets.only(top: 30),
                              width: width,
                              child: Text('WHAT NOT TO DO', style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10, bottom: 30),
                              width: width,
                              child: Text(
                                '1. Don’t apply a topical antibiotic. \n2. '
                                    'Don’t douse a minor wound with antiseptics like iodine or hydrogen peroxide.'
                                , style: TextStyle(
                                  fontSize: 16,
                                  //fontWeight: FontWeight.bold,
                                  height: 1.5
                              ),
                              ),
                            ),

                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 235,
                right: width / 2.3,
                child: Container(
                    height: 35,
                    width: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(10)
                      ),
                      color: primaryColor,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('CUT / SCRAPE', style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                      ),
                    )
                ),
              ),

            ],
          )
        ],
      ),
    );

    //final widgetCutHeight = widgetCut.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              controller.previousPage(
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            icon: Icon(Icons.keyboard_arrow_left_rounded, color: Colors.black,),
          ),
          IconButton(
              onPressed: () {
                controller.nextPage(
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              icon: Icon(
                Icons.keyboard_arrow_right_rounded, color: Colors.black,))

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          scrape(context),
          laceration(context),
          abrasions(context),
          puncture(context),
        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget scrape(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The best thing to do when you got cut or scrape is: 1. Wash your hands with soap and water to prevent infection."
            "2. To stop the bleeding, apply mild pressure to the cut area using a clean washcloth or gauze."
            "3. Clean the wound, cleanse the area around it, and rinse it under running water."
            "4. Apply a thin layer of antibiotic or petroleum jelly to the wound to keep it moist and help it heal faster."
            "5. To prevent the wound from reopening, cover it with a sterile bandage. Change the wound dressing at least once a day."
            "6. To reduce pain, consider taking an over-the-counter pain reliever such as acetaminophen."
            "7. Make sure your tetanus vaccination is up to date if your cut is from a dirty or rusty object.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1340,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.ctfassets.net/yixw23k2v6vo/2i1We9dmgmD7PkpQ3agXDi/583530f5ba221459a9c7611f6282db15/large-04-GettyImages-1138616923.jpg?fm=webp&fit=thumb&q=65&w=824&h=549'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1340,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It refers to a skin wound in which the connective tissue parts have separated and can be cause of bleeding. '
                                      'It can be smooth, deep, or jagged. It could be near the skins surface or deeper which is called as laceration.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(
                                                  text: ' Wash your hands ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'with soap and water to prevent infection. \n\n2. To stop the bleeding,'),
                                              TextSpan(
                                                  text: ' apply mild pressure ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'to the cut area using clean washcloth or gauze. \n\n3.'),
                                              TextSpan(text: ' Clean the wound',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: ', clean the area around it, and rinse it under running water. \n\n4.'),
                                              TextSpan(
                                                  text: ' Apply a thin layer of petroluem jelly or antibiotic to the wound ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'to keep it moist and help it heal faster. \n\n5. To prevent the wound from reopening, '),
                                              TextSpan(
                                                  text: 'cover it with a sterile bandage. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'Change the wound dressing at least once a day. \n\n6. To reduce pain, '),
                                              TextSpan(
                                                  text: 'consider taking an over-the-counter pain reliever ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'such asacetaminophen. \n\n7. '),
                                              TextSpan(
                                                  text: 'Make sure your tetanus vaccnination is up-to-date ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'if your cut is from a dirty or rusty object.'),

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  '1. Don’t apply a topical antibiotic. \n2. '
                                      'Don’t douse a minor wound with antiseptics like iodine or hydrogen peroxide.'
                                  , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('CUT / SCRAPE', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget laceration(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The best thing to do when you got laceration is: "
            "1. Apply hard pressure to the laceration with a clean wash cloth or gauze to stop the flow of blood."
            "2. Clean the wound thoroughly. Clean the region with a sterile cloth, warm water, and mild soap after removing all dirt and debris with cool water."
            "3. Apply an antiseptic or antibiotic ointment to the wound."
            "4. Apply a sterile gauze bandage and first-aid tape to the wound."
            "5. To avoid infection, clean the wound area with soap and water on a regular basis and apply a new sterile bandage.");
      }
    }
    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1320,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.emedicinehealth.com/images/article/main_image/cuts-lacerations.jpg'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1320,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It is a deep incision or tearing of your skin. It is often caused by mechanical tools or sharp items such as a knife or a shard of glass. '
                                      'Deep lacerations can result in quick and significant bleeding. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(
                                                  text: '  Apply hard pressure to the laceration with a clean wash cloth or gauze ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'to stop the flow of blood. \n\n2. Clean the wound thoroughly.'),
                                              TextSpan(
                                                  text: ' Clean the region with a sterile cloth, warm water, and mild soap after removing all dirt and debris with cool water. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(text: ' \n\n3.'),
                                              TextSpan(
                                                  text: ' Apply an antiseptic or antibiotic ointment',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: ' to the wound. \n\n4.'),
                                              TextSpan(
                                                  text: ' Apply a sterile gauze bandage and first-aid tape to the wound.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n5. To avoid infection, '),
                                              TextSpan(
                                                  text: 'clean the wound area with soap and water',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'on a regular basis and'),
                                              TextSpan(
                                                  text: ' apply a new sterile bandage. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  '1. Do not wrap a tourniquet around a limb that is injured, it could result in greater harm. \n2. '
                                      'If your wound bleeds through the gauze or cloth, do not remove it; instead, cover it with fresh, sterile gauze. \n3. Do not try to press your exposed muscle, tendon, bone, or organs back into place; instead, go to the hospital right away.'
                                  , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('LACERATION', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget abrasions(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The best thing to do when you got abrasion is: 1. Start by washing your hands."
            "2. Clean the area carefully with cool to lukewarm water and a mild soap. Use a sterilized tweezers, to remove any dirt or other debris from the wound."
            "3. Leave the wound open if it's just a little scrape that isn't bleeding."
            "4. If the wound is bleeding, apply mild pressure to the area with a clean towel or wash cloth to stop the bleeding. Elevating the affected area can also aid in the reduction of the bleed."
            "5. Apply a thin layer of topical antibiotic ointment, such as Bacitracin, or a sterile moisture barrier ointment, such as Aquaphor, to the wound."
            "6. Use gauze or a clean bandage to cover the wound. Gently clean the incision and replace the ointment and bandage, at least once a day."
            "7. Keep an eye out for signs of infection, such as discomfort, redness, and swelling. Immediately consult your doctor if you suspect you have an infection.");
      }
    }
    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2000,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.ctfassets.net/yixw23k2v6vo/6fUswZxeQEx8tp49ml6NrE/9ea085734e15f99d763d0ecdd6c104b1/large-02-GettyImages-1270491497.jpg?fm=webp&fit=thumb&q=65&w=824&h=549'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2000,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It is sometimes referred to as a scrape or a graze. It is a sort of injury that occurs when the top layer of skin is scraped or rubbed off as a result of friction against the body. '
                                      'The scraped-off surface layer of skin from an abrasion might contain dirt particles, which can lead to infection or other complications if not cleansed and cared to. Abrasions are more likely to occur on thin-skinned bony areas like knees, ankles, and elbows than on thicker, more cushioned places. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'To treat an abrasion, follow the following steps: \n\n1.',),
                                              TextSpan(
                                                  text: ' Start by washing your hands.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(text: '\n\n2.'),
                                              TextSpan(
                                                  text: ' Clean the area carefully with cool to lukewarm water and a mild soap. Use a sterilized tweezers,',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '  to remove any dirt or other debris from the wound. \n\n3.'),
                                              TextSpan(
                                                  text: ' Leave the wound open',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: ' if it is just a little scrape that is not bleeding. \n\n4. If the wound is bleeding, '),
                                              TextSpan(
                                                  text: 'apply mild pressure to the area with a clean towel or wash cloth. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'to stop the bleeding. Elevating the affected area can also aid in the reduction of the bleed. \n\n5.'),
                                              TextSpan(
                                                  text: ' Apply a thin layer of topical antibiotic ointment',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: ', such as Bacitracin, or a sterile moisture barrier ointment, such as Aquaphor, to the wound. \n\n6.'),
                                              TextSpan(
                                                  text: ' Use gauze or a clean bandage to cover the wound. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: ' Gently clean the incision and replace the ointment and bandage, at least once a day. \n\n7.'),
                                              TextSpan(
                                                  text: ' Keep an eye out for signs of infection, such as discomfort, redness, and swelling. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'Immediately consult your doctor if you suspect you have an infection.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  '1. Do not leave your wound open to prevent it from being infected. \n2. '
                                      'Do not soak your wound in the tub or shower. \n3. Do not use hydrogen peroxide or iodine to clean the wound. They are damaging to the skin and can actually slow down the healing process.'
                                      '\n4. Do not expose a cut or scrape to the air. A bandage can keep the wound moist and prevent it from rubbing against clothing and picking up dirt and bacteria, allowing it to heal faster.'
                                      '\n5. Do not remove the bandages too quickly instead remove them carefully and gently. It can peel off the scab or reopen the wound if you rip it off rapidly. If the bandage seems to be stuck, soak it in warm water to soften it.'
                                  , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('ABRASION', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget puncture(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The best thing to do when you got puncture is: 1. Wash your hands, to help prevent possible infections."
            "2. Make sure to stop the bleeding. Use a clean bandage or towel to apply mild pressure."
            "3. Make sure the wound is clean."
            "Proceed to rinse the wound for 5 to 10 minutes with clear water."
            "If a dirt or debris remains in the wound, gently clean it away with a washcloth."
            "If you can't get all of the dirt or debris out, see a doctor."
            "4. Apply a thin layer of antibiotic cream or ointment such as Neosporin, or Polysporin to the affected area."
            "Some ointments contain chemicals that can cause a minor rash in some persons so if a rash develops, discontinue use and seek for medical attention."
            "5. Cover the wound with bandages to keep it clean."
            "6. Remove the dressing and replace it regularly. When you change the bandage for the first two days, rewash the area and reapply the antibiotic."
            "7. Keep an eye out for signs of illness."
            "If the wound isn't healing or you're experiencing increased pain, pus, swelling, or fever, see a doctor. Spreading redness or purplish-gray or darker than you skin tone is an indication of illness. Immediately seek for medical attention.");
      }
    }
    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2370,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.medicinenet.com/images/article/main_image/puncture-wound.jpg'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2370,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It refers to a deep wound that is commonly caused by pointed and sharp objects, such as a nail or knives. Punctures can vary from small, requiring a bandage, to large punctures that may extend into the deeper tissue layers that may damage internal organs. '
                                      'It can easily become infected and carry a danger of tetanus specially when you were penetrated by a rusty object that is why doctors should always examine a deep puncture wound. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: '1.',),
                                              TextSpan(
                                                  text: ' Wash your hands,',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(text: ' to help prevent possible infections. \n\n2. Make sure to stop the bleeding. '),
                                              TextSpan(
                                                  text: 'Use a clean bandage or towel to apply mild pressure.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n3. Make sure the wound is clean.\n\n'),
                                              TextSpan(
                                                  text: '     Proceed to rinse the wound for 5 to 10 minutes with clear water.\n'
                                                      '     If a dirt or debris remains in the wound, gently clean it away with a washcloth.\n'
                                                      '     If you cannot get all of the dirt or debris out, see a doctor.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n4.'),
                                              TextSpan(
                                                  text: ' Apply a thin layer of antibiotic cream or ointment ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'such as Neosporin, or Polysporin to the affected area.\n\n'
                                              ),
                                              TextSpan(
                                                  text: '     *Some ointments contain chemicals that can cause a minor rash in some persons so if a rash develops, discontinue use and seek for medical attention.  ',
                                                  style: TextStyle(
                                                      fontStyle: FontStyle.italic
                                                  )),
                                              TextSpan(
                                                  text: '\n\n5.'
                                              ),
                                              TextSpan(
                                                  text: ' Cover the wound with bandages',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: ' to keep it clean. \n\n6.'),
                                              TextSpan(
                                                  text: ' Remove the dressing and replace it regularly. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'When you change the bandage for the first two days, rewash the area and reapply the antibiotic. \n\n7.'),
                                              TextSpan(
                                                  text: ' Keep an eye out for signs of illness. \n\n',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '     *If the wound is not healing or you are experiencing increased pain, swelling, or fever, see a doctor. Spreading redness or purplish-gray or darker than you skin tone is an indication of illness. Immediately seek for medical attention. ',
                                                  style: TextStyle(
                                                      fontStyle: FontStyle.italic
                                                  )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  '1. Do not submerge the wound into the water like in a bathtub or sink. \n2. '
                                      'Don not use hydrogen peroxide or iodine when cleaning the cut, they are damaging the skin and can actually slow down the healing process. \n3. '
                                      'Do not expose the wound to the air. A bandage can keep the wound moist and prevent it from rubbing against clothing and picking up dirt and bacteria, allowing it to heal faster.'
                                      '\n4. Do not remove the bandages hastily, remove them carefully and gently instead. It can peel off the scab or reopen the wound if you rip it off rapidly. If it seems stuck, soak it in warm water to soften the scab and gently peel the bandage. '
                                      '\n5. Do not scratch the wound or removed the scab. It may itch as a result of the healing process, but touching it can pull the new skin beneath it, delaying recovery or, worse, leaving a scar.'
                                      '\n6. Do not underestimate the necessity of seeking medical attention or obtaining a tetanus shot after stepping on a nail or any rusted object.'
                                  , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('PUNCTURE', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class burn extends StatefulWidget {
  //const burnReal({Key? key}) : super(key: key);
  final Injury injury;
  burn({required this.injury});

  @override
  State<burn> createState() => _burnState();
}

class _burnState extends State<burn> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;


  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If you have minor burns, the best thing to do is: "
            "Apply cool water (not cold)and wet compress in the burned area until the pain eases, "
            "Remove tight items such as rings gently before the buned area swells, "
            "When the burn completely cooled off, apply lotion or moisturizer to prevent drying of the skin, "
            "Cover the burned area with a sterile gauze bandage to keep the air off in the area, plus it "
            "protects blistered skin and the pain reduces, and "
            "Take some pain relievers provided by the counter."
            "Seek medical attention if:"
            "Burns in the hands, feet, groin, buttocks or major joint area of the body, "
            "3rd-degree burns, "
            "If the burn is caused by the chemicals or electricity, or "
            "Breathing becomes difficult or burns to the airway.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2100,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://r3healing.com/wp-content/uploads/2021/07/77427144.jpeg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2100,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is the damaged tissues from either too much exposure on the sun or other radiation, from the heat, or contact from any electrical / chemical substances.'
                                    '\nThere are three degrees of burn and there are symptoms that may vary depending on the skin damage:'
                                    '',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 10),
                                width: width,
                                child: Text('1st-degree burn: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black,
                                        height: 1.5
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 10),
                                width: width,
                                child: Text('This burn only affects the epidermis (the outer layer of skin). It can cause redness and pain in the skin.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 10),
                                width: width,
                                child: Text('2nd-degree burn: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black,
                                        height: 1.5
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 10),
                                width: width,
                                child: Text('This burn affects both the epidermis and dermis (the second layer of the skin). It can cause redness, swelling and irregularly shaped spot on the skin. Also, blisters may develop and severe pain, scarring may also develop if the the burn is deep.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 10),
                                width: width,
                                child: Text('3rd-degree burn: ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: Colors.black,
                                        height: 1.5
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 10),
                                width: width,
                                child: Text('This burn not only reaches the epidemis and dermis, but also the fat layer under the skin. The affected area can either be color white, brown or black. This burn can cause numbness and destroy the nerves on the body.',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                    )),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 10),
                                width: width,
                                child: Text('Causes can be from: \n- Hot Liquid / Boling Water \n- Fire \n- Hot Steam '
                                    '\n- Hot glass / metal \n- Chemicals (acids, gasolines) \n- Sunlight / Ultraviolet Radiation '
                                    '\n- Electrical Currents \n- Radiations from an X-Ray \n- Abuse from a person',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                    )),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'For Minor Burns: \n1.',),
                                              TextSpan(text: ' Apply cool water (not cold) and wet compress in the burned area until the pain eases.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n2.'),
                                              TextSpan(text: ' Remove tight items ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'such as rings gently before the buned area swells. \n\n3. When the burn completely cooled off, '),
                                              TextSpan(text: 'apply lotion or moisturizer',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' to prevent drying of the skin. \n\n4.'),
                                              TextSpan(text: ' Cover the burned area with a sterile gauze bandage ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to keep the air off in the area, plus it protects blistered skin and the pain reduces. \n\n5.'),
                                              TextSpan(text: ' Take some pain relievers provided by the counter. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\nSeek medical attention if:'
                                                  '\n - Burns in the hands, feet, groin, buttocks or major joint area of the body.'
                                                  '\n - 3rd-degree burns.'
                                                  '\n - If the burn is caused by the chemicals or electricity.'
                                                  '\n - Breathing becomes difficult or burns to the airway.'),


                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Do not pop the blisters that developed to avoid getting infection. If a blister breaks, clean it with water and soap (optional).'
                                    '\n2. Do not use ice to cool off the burned area.'
                                    '\n3. Do not apply ointments or sprays.'
                                    '\n4. Do not remove clothing that may affect the stucked skin / Do not try to peel the dead skin.'
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('BURN',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class splinter extends StatefulWidget {
  //const splinter({Key? key}) : super(key: key);
  final Injury injury;
  splinter({required this.injury});
  @override
  State<splinter> createState() => _splinterState();
}

class _splinterState extends State<splinter> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The best thing to do when you got splintered is:"
            "1. Gently clean the affected area of the splinter with warm water and soap."
            "2. Using a rubbing alcohol, sterilize the tweezer and needle to be used for removing the splinter."
            "3. Inspect the splinter around the affected area:"
            "If the tip of the splinter is sticking through the skin, use the sterilized tweezer and firmly grab the end of the splinter. To avoid breaking the splinter, pull it slowly and carefully at the same angle it went in."
            "If the tip of the splinter isn't sticking out, use the sterilized needle and gently scrape the skin until a tip of the splinter shows. Then, pull it slowly and carefully at the same angle it went in."
            "4. After removing the splinter, thorougly clean the affected area with soap and water before covering it with a bandage.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1500,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.thedoctorstv.com/sites/default/files/styles/video_1920x1080/public/images/2010-02/16077.png.jpg?itok=cxVGjTnC'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1500,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It refers to a small peck or line stuck under your skin which may cause infections if left untreated. '
                                    'Most often, these splinters are from tiny pieces of woods, glass, and plastics.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: ' Gently clean the affected area ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'of the splinter with warm water and soap. \n\n2.'),
                                              TextSpan(text: ' Using a rubbing alcohol, sterilize the tweezer and needle',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' to be used for removing the splinter.\n\n3.'),
                                              TextSpan(text: ' Inspect the splinter',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' around the affected area: \n\n- '),
                                              TextSpan(text: 'If the tip of the splinter is sticking through the skin,  ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'use the sterilized tweezer and firmly grab the end of the splinter. To avoid breaking the splinter, pull it slowly and carefully at the same angle it went in.'
                                                  ' \n\n- '),
                                              TextSpan(text: 'If the tip of the splinter is not sticking out,  ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'use the sterilized needle and gently scrape the skin until a tip of the splinter shows. Then, pull it slowly and carefully at the same angle it went in. '
                                                  '\n\n4. After removing the splinter,'),
                                              TextSpan(text: ' thorougly clean the affected area with soap and water before covering it with a bandage. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Avoid pinching the skin when removing the splinter. The pressure exerted to the skin may result to the splinter to break into fragments.'
                                    '\n2. Do not force the splinter out if it is little and not causing any pain or discomfort. Wait until it reaches the skins surface.'
                                    '\n3. Do not be alarmed if the splinter was not able to get out of your skin after 10 to 15 minutes of trying. If possible, head to the nearest medical professionals. '
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SPLINTER',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class insect extends StatefulWidget {
  //const insectReal({Key? key}) : super(key: key);
  final Injury injury;
  insect({required this.injury});

  @override
  State<insect> createState() => _insectState();
}

class _insectState extends State<insect> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If you got bitten by an insect and got mild reaction, the best thing to do is:"
            "- Move to a location where no insects can bite or sting you. "
            "- Gently wash the affected area with water and soap. "
            "- Get a towel or cloth then damp it with cold water or fill the cloth with ice. Then apply the dampened cloth/towel to the bitten/stinged area for 10-20 minutes to reduce the swelling and pain. "
            "- Take an anti-itch mdeicine or antihistamine to reduce the itching. "
            "- Take a nonprescription pain reliever (if necessary)."
            "If the swelling or itchiness got worse overthe days, seek medical assistance immediately");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1775,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.everydayhealth.com/images/skin-beauty/bug-bites/why-mosquito-bites-itch-and-how-to-get-relief-722x406.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1775,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 0),
                                width: width,
                                child: Text('An insect bite makes a hole in a person skin to feed themselves such as in mosquito, while insect sting injects a poison/venom inyo your skin as a defense mechanism. '
                                    'Insect Bites can be from mosquitoes, fleas, bedbugs, spiders, mites or ticks. Sting can be from a bee, wasps or a hornet. \n\n'
                                    'In an insect bite, the insect releases saliva that causes the are of the bitten skin to become itchy, swollen and red. While in a sting, the venom causes the skin to be itchy, '
                                    'swollen and develop a red mark. It can be painful but most cases it is mild.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 30),
                                width: width,
                                child: Text('\nSymptoms may vary depending on what insect bites you the same as on stings.  Some are:\n- Trouble breathing '
                                    '\n- Swelling of parts of the body such as face and throat '
                                    '\n- Fainting '
                                    '\n- Hives '
                                    '\n- Nausea '
                                    '\n- Rapid and weak pulse '
                                  ,
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'For mild reaction of the skin: \n\n1.',),
                                              TextSpan(text: ' Move to a location where no insects can bite or sting you. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n2.'),
                                              TextSpan(text: ' Gently wash the affected area with water and soap.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n3.'),
                                              TextSpan(text: ' Get a towel or cloth then damp it with cold water or fill the cloth with ice.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' Then apply the dampened cloth/towel to the bitten/stinged area for 10-20 minutes to reduce the swelling and pain. \n\n4.'),
                                              TextSpan(text: ' Take an anti-itch medicine or antihistamine ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to reduce the itching. \n\n5. '),
                                              TextSpan(text: 'Take a nonprescription pain reliever',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' (if necessary). \n\nIf the swelling or itchiness got worse over the days, seek medical assistance immediately.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Do not scratch the affected area.'
                                    '\n2. To not get stinged by an insect, try no to panic when encountered one and move back slowly. Do not try to wave your arms or swat them with the use of hands.'
                                    '\n3. Do not bite the affected area. '
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 3,
                  child: Container(
                      height: 35,
                      width: 210,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('INSECT BITE/STING',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class sunburn extends StatefulWidget {
  //const sunburn({Key? key}) : super(key: key);
  final Injury injury;
  sunburn({required this.injury});

  @override
  State<sunburn> createState() => _sunburnState();
}

class _sunburnState extends State<sunburn> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;


  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If you have sunburn, here are the tips to reduce the pain."
            "1. Apply a lotion or moisturizer or gel such as calamine lotion, aloe vera lotion or any type of product to soothe the skin."
            "2. Drink plenty of water to avoid dehydration."
            "3. Take pain relivers for sunburns."
            "4. Get a towel and damp it with cool water and apply it to the affected skin or take a bath with added 2 ounces of baking soda per tub."
            "5. Continue to moisturize the skin when it is peeling."
            "6. When there are blisters and it does not break, use mild soap and water to clean the blister and apply an antibiotic ointment to the blister then cover it up with a nonstick bandage."
            "7. If feeling itchy, take an anti-drug. ");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1800,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://media.cdn.wederm.com/wp-content/uploads/sites/3/2020/08/17142407/PeelingSunburn-iStock.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1800,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 0),
                                width: width,
                                child: Text('It is the result of being exposed to the sun for a long period of time. Your skin burns then turns red and becomes irritated. '
                                    'Sunburn effect on a person depends on three things:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 0),
                                width: width,
                                child: Text('\n1. Skin Type '
                                    '\n2. Intensity of the Sun '
                                    '\n3. Duration of being exposed to the sun ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 0,bottom: 30),
                                width: width,
                                child: Text('\nSevere sunburn can develop swelling and blisters. You also might experience feeling nausea, headache, having fever and weakness. Several days after, the skin will '
                                    'start to peel and itchiness will develop as the body tries to remove the damages cells because of the sun. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'The following are tips to reduce the pain or discomfort from the sunburn: \n\n1.',),
                                              TextSpan(text: ' Apply a lotion or moisturizer or gel such as calamine lotion, aloe vera lotion ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'or any type of product to soothe the skin. \n\n2.'),
                                              TextSpan(text: ' Drink plenty of water to avoid dehydration',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n3.'),
                                              TextSpan(text: ' Take pain relivers for sunburns. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n4. '),
                                              TextSpan(text: 'Get a towel and damp it with cool water and apply it to the affected skin or take a bath with added 2 ounces of baking soda per tub.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n5. Continue'),
                                              TextSpan(text: ' to moisturize the skin',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' when it is peeling. \n\n6. When there are blisters and it does not break, '),
                                              TextSpan(text: 'use mild soap and water to clean the blister and apply an antibiotic ointment to the blister then cover it up with a nonstick bandage. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n7. If feeling itchy, '),
                                              TextSpan(text: 'take an anti-drug.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Avoid getting exposed to sunlight more or cover/protect your skin to sunlight when you will go out.'
                                    '\n2. Avoid applying creams or moisutrizers that can irritate or cause an allergic reaction to your sin sch as "Benzocaine" or any "-caine" products.'
                                    '\n3. Do not try to scratch or peel the affected skin by yourself, let it peel by themselves.'
                                    '\n4. Do not pop any blisters.'
                                    '\n5. Do not use ice to reduce the pain '
                                    '\n6. Do not wear clothes that is tight to wear when sunburnt'
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SUNBURN',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class nosebleed extends StatefulWidget {
  //const nosebleedReal({Key? key}) : super(key: key);
  final Injury injury;
  nosebleed({required this.injury});
  @override
  State<nosebleed> createState() => _nosebleedState();
}

class _nosebleedState extends State<nosebleed> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If got sudden nosebleed, here are the best thing to do:"
            "1. Lean forward and sit up straight."
            "2. Maintain your head above the level of your heart to prevent re-bleeding once the bleeding have stopped."
            "3. Blow your nose gently to eliminate blood clots from your nose. Use nasal decongestants if possible."
            "4. Pinch your nostrils using your index finger and thumb for about 10 to 15 minutes to stop the flow of the blood."
            "5. If the bleeding persists after 10 to 15 minutes, continue applying some pressure for another 10 to 15 minutes. Otherwise, seek for medical attention if the bleeding still continues.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1350,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://curehht.org/wp-content/uploads/2019/04/bloody-tissue_1484520119_10.18.2019-300x200.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1350,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 0),
                                width: width,
                                child: Text('It is a loss of blood that flows from the tissue that connects your nose. It occurs often in only one nostril but there times that both nostrils can be affected. '
                                    'Nosebleed is usually not a serious injury and there is no symptoms most of the time. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: ' Lean forward and sit up straight. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n2.'),
                                              TextSpan(text: ' Maintain your head above the level of your heart to prevent re-bleeding once the bleeding have stopped.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n3.'),
                                              TextSpan(text: ' Blow your nose gently to eliminate blood clots from your nose. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Use nasal decongestants if possible. \n\n4.'),
                                              TextSpan(text: ' Pinch your nostrils using your index finger and thumb for about 10 to 15 minutes to stop the flow of the blood.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n5.'),
                                              TextSpan(text: ' If the bleeding persists after 10 to 15 minutes, continue applying some pressure for another 10 to 15 minutes.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' Otherwise, seek for medical attention if the bleeding still continues. '),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Do not touch or blow your nose when the bleeding stops. Doing so may irritate the nasal passage and restart the bleeding.'
                                    '\n2. Do not eat warm and spicy foods on the same day the nosebleed have occured so that blood vessels will not dilate.'
                                    '\n3. During a nosebleed, avoid lying flat or reclining. The blood from your nose can run down through your throat and may cause vomiting.'
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('NOSEBLEED',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class choking extends StatefulWidget {
  //const chokingReal({Key? key}) : super(key: key);
  final Injury injury;
  choking({required this.injury});

  @override
  State<choking> createState() => _chokingState();
}

class _chokingState extends State<choking> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              controller.animateToPage(
                  0,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            icon: Icon(Icons.keyboard_arrow_left_rounded, color: Colors.black,),
          ),
          IconButton(
              onPressed: () {
                controller.animateToPage(
                    1,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              icon: Icon(
                Icons.keyboard_arrow_right_rounded, color: Colors.black,))

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          babies(context),
          childrenadult(context),

        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget babies(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("When a baby under a year is choking: "
            "1. Lay the baby face down on your forearm, head lower than their body, with your hand supporting their head and shoulders."
            "2. With your fingers, hold their mouth open. Ensure that you continue to support their head."
            "3. With the heel of one hand, deliver up to 5 strong strikes to the back between the shoulders. Check if the blockage has been eliminated after each blow."
            "4. If the object has cleared their airway, use your little finger to remove it from their mouth."
            "5. If the blockage has not cleared after 5 back blows:"
            "Place the newborn on their back on a sturdy surface."
            "Place two fingers on the loer part of the breastbone and do up to five chest thrusts – similar to CPR compressions, but slower and more precise."
            "Check to see if the blockage has been cleared after each thrust."
            "6. If the obstruction persists after 5 thrusts, alternate 5 back and 5 chest thrusts until emergency assistance comes."
            "7. If the child falls unconscious, begin CPR right away.");
      }
    }
    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2100,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.ctfassets.net/6m9bd13t776q/2y6oTaSlXuk8kGeQ82k0Q8/fe332bdaf47967784d98c2d3f653536d/infant-cpr-baby-eating-2160x1200_.jpg?q=75&w=660'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2100,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It is a medical emergency that demands immediate and appropriate response from anyone nearby. It occurs when food or other particles obstruct the upper airway, preventing a person from breathing properly. '
                                      'A simple coughing fit can be result to choking, but a full blockage of the airway can result in death.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'FOR BABIES (ages under a year) ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(text: '\n\nIf a baby is choking,',),
                                              TextSpan(
                                                  text: ' dial 911 ',
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> hotlines(),
                                                      ));
                                                    }),
                                              TextSpan(
                                                  text: 'and request an ambulance right away. Stay on the phone and update the receiver. \n\n',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '1. Lay the baby face down on your forearm, head lower than their body, with your hand supporting their head and shoulders.\n\n2.'),
                                              TextSpan(
                                                  text: ' With your fingers, hold their mouth open. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'Ensure that you continue to support their head. \n\n3.'),
                                              TextSpan(text: ' With the heel of one hand, deliver up to 5 strong strikes to the back between the shoulders.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold
                                                  )),
                                              TextSpan(
                                                  text: ' Check if the blockage has been eliminated after each blow. \n\n4. If the object has cleared their airway, '),
                                              TextSpan(
                                                  text: 'use your little finger to remove it from their mouth.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n5. If the blockage has not cleared after 5 back blows: '),
                                              TextSpan(
                                                  text: '\n\n- Place the newborn on their back on a sturdy surface. '
                                                      '\n- Place two fingers on the loer part of the breastbone and do up to five chest thrusts, similar to CPR compressions, but slower and more precise. '
                                                      '\n- Check to see if the blockage has been cleared after each thrust.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n6. If the obstruction persists after 5 thrusts,'),
                                              TextSpan(
                                                  text: ' alternate 5 back and 5 chest thrusts until emergency assistance comes.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n7. '),
                                              TextSpan(
                                                  text: 'If the child falls unconscious, begin ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'CPR',
                                                  style: TextStyle(
                                                      color: Colors.blue,
                                                      fontWeight: FontWeight.bold
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> cprReal(),
                                                      ));
                                                    }),
                                              TextSpan(
                                                  text: ' right away.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  '1. Do not wait for someone else to help provide first aid and make an action, step in yourself and immediately call for an ambulance or 911.'
                                      '\n2. Do not pick up the child and turn him or her upside down.'
                                      '\n3. Do not put your fingers inside their mouth since they might bite you and further push down the object in the trachea.'
                                      '\n4. Do not attempt the Heimlich maneuver (a large thrust to the abdomen), if you have not had the proper knowledge or practice on how to do it, since this can break ribs and injure the internal organs.'
                                      '\n5. Do not slap a choking individual on the back while they are standing, the object may slip further down the trachea due to gravity. '
                                  , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 3.9,
                  child: Container(
                      height: 35,
                      width: 235,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('CHOKING (FOR BABIES)', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget childrenadult(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If a children or adult (ages 1 year above) is choking. Begin the heimlich manuever."
            "1. Try to keep the person calm. Ask them to cough to try and get rid of the object."
            "2. Bend the individual forward and strike them in the back between the shoulder blades with the heel of one hand up to 5 times, to create a strong vibration and pressure in the airway, which could be enough to dislodge the blockage. Check to see if the blockage has been eliminated after each blow."
            "3. If the obstruction remains after 5 blows, try the following:"
            "Place one hand in the center of the person's back for support."
            "Place the heel of the other hand on the breastbone's lower half, in the central part of the chest."
            "As if you're trying to hoist the individual up, press forcefully into the chest with a fast upward thrust."
            "Check to see if the blockage has been cleared after each thrust."
            "4. If they are still choking after 5 thrusts, dial 911 and alternate 5 back and 5 chest thrusts until medical assistance comes."
            "5. If the patient becomes blue, limp, or unconscious, dial 911 and request an ambulance. Begin CPR as soon as possible.");
      }
    }
    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2200,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.mymed.com/image/2763/MedicalArticle/700'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2200,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It is a medical emergency that demands immediate and appropriate response from anyone nearby. It occurs when food or other particles obstruct the upper airway, preventing a person from breathing properly. '
                                      'A simple coughing fit can be result to choking, but a full blockage of the airway can result in death. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'FOR CHILDREN AND ADULT  (ages 1 year and above) ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(text: '\n\n1.',),
                                              TextSpan(
                                                  text: ' Try to keep the person calm. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'Ask them to cough to try and get rid of the object. \n\n2.'),
                                              TextSpan(
                                                  text: ' Bend the individual forward and strike them in the back between the shoulder blades with the heel of one hand up to 5 times, ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(text: 'to create a strong vibration and pressure in the airway, which could be enough to dislodge the blockage. Check to see if the blockage has been eliminated after each blow.'
                                                  '\n\n3. If the obstruction remains after 5 blows, try the following:'),
                                              TextSpan(
                                                  text: '\n\n- Place one hand in the center of the persons back for support.'
                                                      '\n- Place the heel of the other hand on the breastbones lower half, in the central part of the chest.'
                                                      '\n- As if you are trying to hoist the individual up, press forcefully into the chest with a fast upward thrust.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\nCheck to see if the blockage has been cleared after each thrust. \n\n4. If they are still choking after 5 thrusts,'),
                                              TextSpan(
                                                  text: ' dial 911 ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> hotlines(),
                                                      ));
                                                    }
                                              ),
                                              TextSpan(
                                                  text: ' and alternate 5 back and 5 chest thrusts until medical assistance comes.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n5. If the patient becomes blue, limp, or unconscious,'),
                                              TextSpan(
                                                  text: ' dial 911 ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> hotlines(),
                                                      ));
                                                    }
                                              ),
                                              TextSpan(
                                                  text: 'and request an ambulance. Begin',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: ' CPR ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> cprReal(),
                                                      ));
                                                    }
                                              ),
                                              TextSpan(
                                                  text: 'as soon as possible.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  '1. Do not wait for someone else to help provide first aid and make an action, step in yourself and immediately call for an ambulance or 911.'
                                      '\n2. Do not pick up the child and turn him or her upside down. '
                                      '\n3. Do not inquire about the persond well-being. Instead, ask if he or she is choking or experiencing an asthma attack so that you can take action properly.'
                                      '\n4. Do not put your fingers inside their mouth since they might bite you and further push down the object in the trachea.'
                                      '\n5. Do not attempt the Heimlich maneuver (a large thrust to the abdomen), if you have not had the proper knowledge or practice on how to do it, since this can break ribs and injure the internal organs.'
                                      '\n6. Do not slap a choking individual on the back while they are standing, the object may slip further down the trachea due to gravity. '
                                      '\n7. If they fall unconscious, do not start CPR by providing breaths; instead pressing on the chest with compressions first may drive the object out as muscles relax when a casualty becomes unconscious.'
                                  , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 6.5,
                  child: Container(
                      height: 35,
                      width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('CHOKING (FOR CHILDREN & ADULTS', style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}

class drowning extends StatefulWidget {
  //const drowningReal({Key? key}) : super(key: key);
  final Injury injury;
  drowning({required this.injury});

  @override
  State<drowning> createState() => _drowningState();
}

class _drowningState extends State<drowning> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If a person is drowning, Ask for immediate help if there is a lifeguard nearby. Otherwise, call 911 and follow the steps below."
            "1. Rescue the person out of the water."
            "2. Call out the attention of the drowning person by shaking their shoulders. If the person doesn't respond, check their breathing."
            "3. Put your ear on the person's mouth and nose. Inspect if the person's chest is moving."
            "4. Check the person's pulse for 10 seconds."
            "5. If the person is breathing, put them in a recovery position by following the steps below. Otherwise, proceed to the next step:"
            "Kneel beside the drowning person."
            "Extend the farthest arm from you out and place it in a right angle to their body."
            "Place the nearest arm across their chest."
            "Take the nearest leg and bend it up at the knee."
            "Gently move their head and neck by rolling the person away from you. They should be facing sideward by now."
            "Upon facing sideward, place their upper leg bent at the knee, while the other knee is touching the ground."
            "6. If the drowning person has no pulse, begin doing CPR");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2390,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.helpinginjuredpeople.com/wp-content/uploads/2021/10/Drowning-Accident.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height:2390,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Drowning is when water submerged to your body and the process of respiratory impairment occurs. Fatal drowning can result to death.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: ' Ask for immediate help if there is a lifeguard nearby. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Otherwise, '),
                                              TextSpan(text: 'call 911 ',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue
                                              ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> hotlines(),
                                                      ));
                                                    }
                                              ),
                                              TextSpan(text: 'and follow the steps below.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n2.'),
                                              TextSpan(text: ' Rescue the person out of the water. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n3.'),
                                              TextSpan(text: ' Call out the attention of the drowning person by shaking their shoulders.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' If the person does not respond, check their breathing. \n\n4.'),
                                              TextSpan(text: " Put your ear on the person's mouth and nose.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: " Inspect if the person's chest is moving. \n\n5. "),
                                              TextSpan(text: "Check the person's pulse for 10 seconds.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: " Inspect if the person's chest is moving. \n\n6. "),
                                              TextSpan(text: "If the person is breathing, put them in a recovery position by following the steps below. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Otherwise, proceed to the next step:\n\n- "),
                                              TextSpan(text: "Kneel beside the drowning person "
                                                  "\n\n- Extend the farthest arm from you out and place it in a right angle to their body"
                                                  "\n\n- Place the nearest arm across their chest "
                                                  "\n\n- Take the nearest leg and bend it up at the knee"
                                                  "\n\n- Gently move their head and neck by rolling the person away from you. They should be facing sideward by now"
                                                  "\n\n- Upon facing sideward, place their upper leg bent at the knee, while the other knee is touching the ground."
                                                  "\n\n8. If the drowning person has no pulse, "),
                                              TextSpan(text: "begin doing CPR:",style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue
                                              ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> cprReal(),
                                                      ));
                                                    }
                                              ),

                                              TextSpan(text: "\n\n9. "),
                                              TextSpan(text: "Repeat the procedure if the drowning person is still not breathing after following the steps above."
                                                  "\n\n**If you have an experience and is trained in doing CPR, you can add two rescue breaths in adults. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "\n\n- Tilt the head back to and lift the chin to open the airway."
                                                  "\n\n- Pinch the nose closed and take normal breaths by covering the mouth with yours. "
                                                  "\n\n- Apply 2 one-second breaths as the chest rises. "
                                                  "\n\n- Give two breaths followed by 30 chest compressions.  "
                                                  "\n\n- Continue giving 30 compressions and two breaths until the person begins to breathe or when emergency help arrive.")
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. When applying chest compressions, do not be too agressive to prevent possible rib fractures'
                                    '\n2. Do not turn the person upside down and shake them'
                                    '\n3. Do not apply CPR when the person is still breathing'
                                    '\n4. Do not push the abdomen to force the water out'
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('DROWNING',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class electricshock extends StatefulWidget {
  //const electricshockReal({Key? key}) : super(key: key);
  final Injury injury;
  electricshock({required this.injury});
  @override
  State<electricshock> createState() => _electricshockState();
}

class _electricshockState extends State<electricshock> {


  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              controller.animateToPage(
                  0,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            icon: Icon(Icons.keyboard_arrow_left_rounded, color: Colors.black,),
          ),
          IconButton(
              onPressed: () {
                controller.animateToPage(
                    1,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              icon: Icon(
                Icons.keyboard_arrow_right_rounded, color: Colors.black,))

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          electricshock(context),
          shock(context),

        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget electricshock(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("When a person got electric shock, the best thing to do is:"
            "1. Call 911 for help."
            "2. Separate the person from the source of electricity."
            "If you can turn off the power:"
            "Unplug any appliances the caused the person to be electrically shocked if the plug is not broken. Turn off the electricity through circuit breaker, fuse box, or outside switch."
            "Use a non-conductive object, such as a wooden or plastic broom handle, a chair, or a rubber doormat, to distance the person from the source of electricity."
            "3. If the person is not breathing, proceed doing CPR");
      }
    }

    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1620,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://t3.ftcdn.net/jpg/03/72/16/08/360_F_372160835_WkdoxOWplAjoPwutYMVwZ4PAESQxikH5.jpg'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1620,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It refers when an individual comes in contact with an electrical energy source. '
                                      'This electric current travels through your body, causing internal and external tissue burns, which in severe cases, may result to organ damage and death.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(
                                                  text: ' Call 911 ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> hotlines(),
                                                      ));
                                                    }
                                              ),
                                              TextSpan(
                                                  text: 'for help ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(text: '\n\n2.',),
                                              TextSpan(
                                                  text: ' Separate the person from the source of electricity. ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n3. If you can turn off the power:'),
                                              TextSpan(
                                                  text: '\n\n- Unplug any appliances the caused the person to be electrically shocked if the plug is not broken. Turn off the electricity through circuit breaker, fuse box, or outside switch.'
                                                      '\n\n- Use a non-conductive object, such as a wooden or plastic broom handle, a chair, or a rubber doormat, to distance the person from the source of electricity.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n3. If the person is not breathing,'),
                                              TextSpan(text: ' proceed doing CPR.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> cprReal(),
                                                      ));
                                                    }
                                              ),

                                              TextSpan(
                                                  text: '\n\n4.'),
                                              TextSpan(
                                                  text: ' Check for Other Injuries',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n- The person may bleed after experiencing electric shock. Apply pressure to the wounded area. elevate if the wound is in the arm or leg.'
                                                      '\n\n- The person who have fell from being shocked may cause to fractures.'
                                                      '\n\n- Check to see if there are burns.'
                                                      '\n\n5.'),
                                              TextSpan(
                                                  text: ' Wait for 911 to arrive.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  '1. Do not separate the person from the current if there is a feeling of a tingling sensation from your legs and lower body.'
                                      '\n2. Do not touch the source of electricity.'
                                      '\n3. Prevent using adhesive badages or anything that might stick to the burned area.'
                                      '\n4. Do not move the person who has been shocked not unless it will cause further shock.'
                                  , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.8,
                  child: Container(
                      height: 35,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('ELECTRIC SHOCK', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget shock(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("When the person got shock, the best thing to do is: "
            "1. Call 911 then follow the steps accordingly:"
            "2. Lay the person down and slightly raise the legs and feet, support the levitation using a chair, as long as it doesn't cause discomfort or further injury."
            "3. Maintain the person's position and don't move the person unless necessary."
            "4. If the person is not breathing, coughing, or moving, begin doing CPR:");
      }
    }

    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1455,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://phmc.com.ph/wp-content/uploads/2020/09/What-To-Do-When-An-Epileptic-Seizure-Occurs.jpg'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1455,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It is a critical condition due to a sudden drop of blood flow of the body. '
                                      'The common causes of shock comes from trauma, allergic reaction, severe infections, severe burns, blood loss, heatstroke, and many other causes.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(
                                                  text: ' Call 911 ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> hotlines(),
                                                      ));
                                                    }
                                              ),
                                              TextSpan(
                                                  text: 'then follow the steps accordingly: ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n2.'),
                                              TextSpan(
                                                  text: ' Lay the person down and slightly raise the legs and feet, support the levitation using a chair, ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(text: 'as long as it does not cause discomfort or further injury. '
                                                  '\n\n3. Maintain the person position and do not move the person unless necessary. '
                                                  '\n\n4.  If the person is not breathing, coughing, or moving,'),
                                              TextSpan(
                                                  text: ' begin doing CPR.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.blue
                                                  ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> cprReal(),
                                                      ));
                                                    }
                                              ),

                                              TextSpan(
                                                  text: '\n\n5. To prevent chilling, loosen tight clothes. If necessary,'),
                                              TextSpan(
                                                  text: ' cover the person using a blanket.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n6. If you suspect an allergic reaction, and has an '),
                                              TextSpan(
                                                  text: 'access to epinephrine autoinjector, use it as per instructed.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n7. If the person is bleeding, '),
                                              TextSpan(
                                                  text: 'use a towel or sheet to apply pressure to the bleeding area.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n8. If the person is vomiting and bleeding from the mouth, and there is no suspected spinal injury, '),
                                              TextSpan(
                                                  text: 'move the person to his side to prevent choking from the blood.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  '1. Do not attempt to offer the person to eat or drink.'
                                      '\n2. Do not raise the persons head.'
                                      '\n3. Only apply CPR when the person is not breathing. Proper applying of CPR shall be used for adult and children.'
                                  , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SHOCK', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}

class heartattack extends StatefulWidget {
  //const heartattackReal({Key? key}) : super(key: key);
  final Injury injury;
  heartattack({required this.injury});

  @override
  State<heartattack> createState() => _heartattackState();
}

class _heartattackState extends State<heartattack> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("What to do when you saw someone having a heart attack:"
            "Immediately call medical attention."
            "Then, check the breathing and pulse."
            "If there isn't any pulse of breathing is absent then begin doing the CPR."
            "Push hard and fast on the victims chest in a fairly rapid rhythm for about 100 - 120 compressions a minute."
            "If not trained to do CPR, use only chest compressions. But if trained, you can do the opening of airway and rescue breathing."
            "Wait for help to come."
            "If you do not have access to any medical services, get someone to drive you and the victim to the nearest hospital.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1600,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.news18.com/ibnlive/uploads/2022/07/heart-attack-16569389733x2.png?im=Resize,width=360,aspect=fit,type=normal?im=Resize,width=320,aspect=fit,type=normal'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1600,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 0),
                                width: width,
                                child: Text('(or also known as Myocardial Infarction) It occurs when the hearts blood flow has been blocked, the causes might be from the build up of fats in the body, cholesterol and other substances and it forms coronary arteries or the plaque in the arteries that feeds the heart. '
                                    'The plaque can sometimes form a clot that can block the flow of blood and it can lead to a damaged or destroyed part of the heart muscle.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('\nSigns and symptoms of having an heart attack may include:'
                                    '\n\n- Fatigue'
                                    '\n- Cold Sweat'
                                    '\n- Dizziness'
                                    '\n- Breathe Shortage'
                                    '\n- Heartburn, indigestion, abdominal pain, nausea'
                                    '\n- Tightness or pain sensation in chest or arms that may expand to your jaw, neck and back',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: ' Immediately call medical attention. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n2. Then, '),
                                              TextSpan(text: 'check the breathing and pulse.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n3.  If there is not any pulse of breathing is absent then'),
                                              TextSpan(text: ' begin doing the CPR.',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue
                                              ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> cprReal(),
                                                      ));
                                                    }
                                              ),
                                              TextSpan(text: '\n\n4.'),
                                              TextSpan(text: ' Push hard and fast on the victims chest in a fairly rapid rhythm for about 100 - 120 compressions a minute.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n5. If not trained to do CPR,'),
                                              TextSpan(text: " use only chest compressions. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "But if trained, "),
                                              TextSpan(text: "you can do the opening of airway and rescue breathing.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "\n\n6. "),
                                              TextSpan(text: "Wait for help to come.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "\n\nNote: If you do not have access to any medical services, get someone to drive you and the victim to the nearest hospital. "),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Do not rely on taking nitroglycerin.'
                                    '\n2. Do not cough repeatedly.'
                                    '\n3. Do not apply pressure on the chest while having heart attack.'
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('HEART ATTACK',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class shrapnel extends StatefulWidget {
  //const shrapnel({Key? key}) : super(key: key);
  final Injury injury;
  shrapnel({required this.injury});

  @override
  State<shrapnel> createState() => _shrapnelState();
}

class _shrapnelState extends State<shrapnel> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If a person got shrapneled, the best thing to do is: "
            "Irrigate the area by pouring or preferably, gently spraying of water onto it."
            "Do not remove the shrapnel as it can be hot enough to burn you."
            "Avoid applying direct pressure to the wound, which can force the shrapnel deeper into the body."
            "Call 911 and follow the dispatcher’s directions while you wait on EMS."
            "Seek medical attention immediately ");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height:1030,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.shopify.com/s/files/1/2012/7847/files/shoulder_large.jpg?v=1505403888'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1030,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is the fragments of an explosive material suchas bomb, shell, firewors or any object that is thrown out to explode.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: ' Irrigate the area by pouring or preferably, gently spraying of water onto it.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n2.'),
                                              TextSpan(text: 'Do not remove the shrapnel',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' as it can be hot enough to burn you. \n\n3.'),
                                              TextSpan(text: ' Avoid applying direct pressure to the wound,',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' which can force the shrapnel deeper into the body. \n\n4.'),
                                              TextSpan(text: ' Call 911',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.blue
                                              ),
                                                  recognizer: TapGestureRecognizer()
                                                    ..onTap = () {
                                                      Navigator.of(context).push(MaterialPageRoute(
                                                        builder: (context)=> hotlines(),
                                                      ));
                                                    }
                                              ),
                                              TextSpan(text: ' and follow the dispatcher’s directions ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'while you wait on EMS. Seek medical attention immediately '),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Do not try to pull the stucked shrapnel in your body.'
                                    '\n2. Do not move especially on the injured area.'
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SHRAPNEL',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class headinjury extends StatefulWidget {
  //const headinjuryReal({Key? key}) : super(key: key);
  final Injury injury;
  headinjury({required this.injury});
  @override
  State<headinjury> createState() => _headinjuryState();
}

class _headinjuryState extends State<headinjury> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("Minor head injuries often have no symptoms besides pain at the site of the injury. "
            "Your doctor may prescribe Tylenol (Acetaminophen) to help with that pain."
            "See your doctor right away if you think you have the symptoms of a serious head injury."
            "Please immediately seek medical attention if you experience any of the following:"
            "1. loss of consciousness."
            "2. disorientation."
            "3. confusion");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1280,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://concussionresolution.com/wp-content/uploads/2020/05/woman-with-concussion.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1280,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('A head injury is any sort of damage to your brain, skull, or scalp. This could range from a mild bump or bruise to a traumatic brain injury. Common head injuries are concussions and skull fractures. '
                                    'The consequences vary greatly depending on what caused your head injury and how severe it is. '
                                    '\n\n'
                                    'A head injury can be either closed or open. A closed head injury is any injury to the head that does not break the skull. An open, or penetrating, head injury is one in which something breaks the scalp and skull and enters the brain.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '- Minor head injuries often have no symptoms besides pain at the site of the injury. Your doctor may prescribe',),
                                              TextSpan(text: ' Tylenol (Acetaminophen)',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' to help with that pain.'),
                                              TextSpan(text: '\n\n- See your doctor right away',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' if you think you have the symptoms of a serious head injury.'
                                                  '\n\n Please immediately seek medical attention if you experience any of the following:'),
                                              TextSpan(text: '\n\n1. Loss of Conciousness'
                                                  '\n2. Disorientation'
                                                  '\n3. Confusion ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1.Please avoid taking NSAID painkillers like ibuprofen (Advil) or aspirin (Bayer) if you’re bleeding heavily. These drugs can make bleeding worse.'
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('HEAD INJURY',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class seizure extends StatefulWidget {
  //const seizureReal({Key? key}) : super(key: key);
  final Injury injury;
  seizure({required this.injury});

  @override
  State<seizure> createState() => _seizureState();
}

class _seizureState extends State<seizure> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("When you see a person having a seizure, you need to"
            "put the person to the floor. "
            "Gently move the person to one side to make the breathing easier "
            "Remove anything hard or pointy from the area around the individual.  to avoid injury. "
            "Put something soft and flat beneath the person's head, such as a folded jacket. "
            "If the person has eyeglasses, take it off. "
            "If the person has any ties around the neck, loosen it. "
            "Keep track of the time of the seizure. If the seizure lasts for more than 5 minutes, call 911");
      }
    }


    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1260,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://st2.depositphotos.com/4297405/8069/v/450/depositphotos_80698162-stock-illustration-scene-illustration-first-aid-person.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1260,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It refers to uncontrolled activity that causes irregularities in muscle tone or movements, changes in behavior, and levels of conciousness.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'Put the person to the floor.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n2. '),
                                              TextSpan(text: 'Gently move the person to one side',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' to make the breathing easier. \n\n3.'),
                                              TextSpan(text: ' Remove anything hard or pointy from the area around the individual ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to avoid injury. \n\n4.'),
                                              TextSpan(text: " Put something soft and flat beneath the person's head, ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'such as a folded jacket. '
                                                  '\n\n5. If the person has eyeglasses, take it off.'
                                                  '\n\n6. If the person has any ties around the neck, loosen it.'
                                                  '\n\n7. Keep track of the time of the seizure. If the seizure'),
                                              TextSpan(text: " lasts for more than 5 minutes, call 911.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Do not restrain or hold the person from moving.'
                                    "\n2. Do not place anything in the person's mouth to prevent teeth and jaw injuries."
                                    "\n3. Don't attempt to do CPR."
                                    "\n4. Don't give the person the person a drink or food not unless the person have already recovered from the seizure."
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SEIZURE',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class rabies extends StatefulWidget {
  //const rabiesReal({Key? key}) : super(key: key);
  final Injury injury;
  rabies({required this.injury});

  @override
  State<rabies> createState() => _rabiesState();
}

class _rabiesState extends State<rabies> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If you see a person get bitten by a dog or any animals that might have rabies, the best thing to do is"
            "1. Clean the wound with soap and warm water."
            "2. Apply pressure on the wound using a clean cloth to stop the flow of blood."
            "3. If possible, apply an antibacterial ointment to the wound."
            "4. Cover the wound with a sterile bandage."
            "5. Seek for medical care if:"
            "the injury came from a wild or stray animal,"
            "the animal who caused the injury has any recent unusual behavior,"
            "the pet animal is not up-to-date with their rabies shots,"
            "the animal attack has broken the skin of the victim,"
            "the bite is on the head, face, neck, foot, hand, or near a joint,"
            "the wound has become swollen, red, hot, and more painful,"
            "the victim has not had his tetanus shot within 5 years,"
            "if the victim is seriously injured from the bite");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1800,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://topdogtips.com/wp-content/uploads/2020/01/Signs-of-Rabies-in-Dogs-and-Their-Three-Prominent-Stages-1021x580.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1800,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is a viral disease commonly transmitted through the bite of a rabid animal. '
                                    'This virus infects the central nervous system resulting to brain diseases and even death. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'Clean the wound with soap and warm water. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n2. '),
                                              TextSpan(text: 'Apply pressure on the wound using a clean cloth',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to stop the flow of blood. \n\n3. If possible,'),
                                              TextSpan(text: ' apply an antibacterial ointment to the wound. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n4.'),
                                              TextSpan(text: " Cover the wound with a sterile bandage. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text:
                                              '\n\n5. Seek medical care if:'
                                                  '\n\n- The injury came from a wild or stray animal.'
                                                  '\n\n- The animal who caused the injury has any recent unusual behavior.'
                                                  '\n\n- The pet animal is not up-to-date with their rabies shots.'
                                                  '\n\n- The animal attack has broken the skin of the victim.'
                                                  '\n\n- The bite is on the head, face, neck, foot, hand, or near a joint.'
                                                  '\n\n- The wound has become swollen, red, hot, and more painful.'
                                                  '\n\n- The victim has not had his tetanus shot within 5 years.'
                                                  '\n\n- If the victim is seriously injured from the bite.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("1. Don't take other medicines unless it has been prescribed and discussed by your doctor."
                                    "\n2. Don't miss any doses of rabies vaccine."
                                    "\n3. Don't keep wild animals to your home and treat them as pets. They can be a carrier of rabies virus."
                                    "\n4. If handling stray or wild animals, don't use your bare hands. This may prevent you from having rabies virus in case they bite."
                                    "\n5. Don't let your pets roam freely. Always supervise them when going outside."
                                    "\n6. Keep your pets confined to your property. This will help keep them to have a contact with wild animals that carries the virus."
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('RABIES',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class commoncold extends StatefulWidget {
  //const commoncoldReal({Key? key}) : super(key: key);
  final Injury injury;
  commoncold({required this.injury});

  @override
  State<commoncold> createState() => _commoncoldState();
}

class _commoncoldState extends State<commoncold> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("What to do when you have cold:"
            "1. Sleep and rest at home."
            "2. Drink plenty of water to stay hydrated and replenish fluid that was gone because of sweating."
            "3. Take medicines such as Bioflu or Biogesic every 4-6 hours."
            "4. Remove excess clothes or blankets to stay cool unless the environment gives you the chills."
            "5. If fever has worsen, more symptoms appear (ex: shortness of breathing, severe sore throat, etc...), or temperature fail to decrease, seek medical attention");
      }
    }

    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1580,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.onhealth.com/images/slideshow/10_tips_prevent_cold_s1_sneezing_women.jpg')
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1580,
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is an infection in a persons throat and nose and there are many viruses that can lead to a common cold.  People who are young or infant can get colds frequently each year, while an adult  that is healthy can experience it for two to three times each year and can recover mostly for 10 days.'
                                    'Symptoms cause by common cold can appear one to three days after being exposed by a virus. The symptoms and signs of having a cold are the following:'
                                    '\n1. Cough'
                                    '\n2. Runny Nose'
                                    '\n3. Sore Throat'
                                    '\n4. Body Aches or Headaches'
                                    '\n5. Sneezing'
                                    '\n6. Feeling unwell'
                                    '\n7. Low-grade Fever',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: ' Sleep and rest',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' at home.'),
                                              TextSpan(text: '\n\n2.',),
                                              TextSpan(text: ' Drink plenty of water',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' to stay hydrated and replenish fluid that was gone because of sweating. ',style: TextStyle(
                                              )),
                                              TextSpan(text: '\n\n3.',),
                                              TextSpan(text: ' Take medicines ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'such as Bioflu or Biogesic every 4-6 hours.\n\n4.'),
                                              TextSpan(text: ' Remove excess clothes or blankets ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to stay cool unless the environment gives you the chills.\n\n5.'),
                                              TextSpan(text: ' If fever has worsen, ',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' more symptoms appear (ex: shortness of breathing, severe sore throat, etc...), or temperature fail to decrease, seek medical attention.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Do not starve yourself and eat as much as you could to avoid having low energy. \n2. '
                                    'Avoid doing stretenous activities that might get your body feeling tired as it can worsen the condition of your body.\n3. '
                                    'Avoid looking at a computer or any gadget screen. \n4. '
                                    'Do not cover yourself with blanket as it will not lessen the fever aand the bod temperature will go up. (Unless you get the chills or your body is shivering because of coldness).'
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.6,
                  child: Container(
                      height: 35,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('COMMON COLD',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class cough extends StatefulWidget {
  //const coughReal({Key? key}) : super(key: key);
  final Injury injury;
  cough({required this.injury});

  @override
  State<cough> createState() => _coughState();
}

class _coughState extends State<cough> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {

    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          cough(context),
          //migraine(context),
        ],

      ),
    );
  }

  Widget cough(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("When you have cough, the best thing to do is Drink a lot of fluids to calm the irritated throat and make the mucus break up. The following are the natural cough remedies:"
            "Honey Tea, GInger, Steam, Room Temperature Water, Marshmallow Root, Salt-water gargle, Bromelain (enzymes that came from pineapples), Thyme, Probiotics."
            "Medical Attention is needed when:"
            "Mucus is red/bloody,Out of breathe / Chest is becoming tight,When you have a fever that is severe, Still coughing after a week,Coughing with a lot of mucus");
      }
    }
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1690,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.mydr.com.au/wp-content/uploads/2020/10/AdobeStock_292971028-scaled.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1690,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Coughing is caused by either viruses, allergies, asthma or irritants. It is the way that your body responds when there is irritation in the throat . The nerves signals the brain then informs the muscles around the abdomen and chest to clear air out of the lungs and force the cause of coughing to go out.'
                                    '\nCasual cough is normal, but coughing for a the past few days/weeks or coughing with blood or discolored mucus may need the attention of a medic.'
                                    '\nContinous coughing can cause:'
                                    '\n1. Dizziness'
                                    '\n2. Headaches'
                                    '\n3. Fainting'
                                    '\n4. Vomiting'
                                    '\n5. Sleeplessness'
                                    '\n6. Broken Ribs'
                                    '\n7. Urinary Incontinence',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Drink a lot of fluids',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' to calm the irritated throat and make the mucus break up.\n'),
                                              TextSpan(text: '\nThe following are the natural cough remedies:',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n- Honey Tea'),
                                              TextSpan(text: '\n- GInger'),
                                              TextSpan(text: '\n- Steam'),
                                              TextSpan(text: '\n- Room Temperature Water'),
                                              TextSpan(text: '\n- Marshmallow Root'),
                                              TextSpan(text: '\n- Salt-water gargle'),
                                              TextSpan(text: '\n- Bromelain (enzymes that came from pineapples)'),
                                              TextSpan(text: '\n- Thyme'),
                                              TextSpan(text: '\n- Probiotics'),
                                              TextSpan(text: '\n\nMedical Attention is needed when:',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n- Mucus is red/bloody.'),
                                              TextSpan(text: '\n- Out of breathe / Chest is becoming tight.'),
                                              TextSpan(text: '\n- When you have a fever that is severe.'),
                                              TextSpan(text: '\n- Still coughing after a week.'),
                                              TextSpan(text: '\n- Coughing with a lot of mucus.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Your coughing could go worse when:\n'
                                    '1. Drinking Cold Water\n2.'
                                    ' Drinking Milk\n3.'
                                    ' Eating Spicy Food\n4.'
                                    ' Sugar consumption is high\n5.'
                                    ' Drinking Alcohol\n6.'
                                    ' Drinking Caffeine'
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('COUGH',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}

class flu extends StatefulWidget {
  //const fluReal({Key? key}) : super(key: key);
  final Injury injury;
  flu({required this.injury});

  @override
  State<flu> createState() => _fluState();
}

class _fluState extends State<flu> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [


        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          flu(context),
          //migraine(context),
        ],

      ),
    );
  }

  Widget flu(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("When you have flu, you need to "
            "1. Stay at home. The virus is contagious and may infect other people. Avoid having a close contact with other people as flu viruses spread through airborne droplets from sneezing or coughing."
            "2. Get plenty of rest. Resting will give your body energy to fight the flu virus and symptoms."
            "3. Drink plenty of fluids. Fever is one of the common flu symptoms, associated with dehydration, which makes it essential to drink the right amount of water to stay hydrated."
            "4. Ask your doctor for your anti-viral medicines. The prescription of the doctor will help you fight the flu symptopms."
            "5. Treat your fever and aches. ⁭If you have fever and aches, you may need to take medications like ibuprofen, paracetamol, and acetaminophen."
            "6. Take care of your cough by taking expectorant. Expectorants are medications used for turning your mucus into liquid so you can take the phlegm out of your mouth."
            "7. If you have a humidifier or vaporizer at home, use it to help ease congestion and coughs."
            "8. Take lozenges. Lozenges such as strepsils helps soothe a scratchy throat which is also helpful for coughs."
            "9. If you develop any of the following symptoms below, call for medical care:"
            "earache or drainage of the ear, pain in the face or forehead followed by a thick yellow or green mucus that lasted for more than a week,"
            "A temperature of 38 °C or higher for infants with less than 3 months of age,"
            "A temperature higher than 37 °C for older children and adults, sore throat or cough that does not go away, wheezing, shortness of breath, vomiting, or other symptoms that gets worse and don't go away after a few days");
      }
    }
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2430,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://files.nccih.nih.gov/man-cold-flu.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2430,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Flu is a viral infection that commonly starts like a cold that causes serious health risks, complications, and even death. For young children and elderly, this illness can be life-threatening.'
                                    '\nThe symptoms of flu are:'
                                    '\nContinous coughing can cause:'
                                    '\n1. Fever'
                                    '\n2. Headache'
                                    '\n3. Fatigue of feeling weak'
                                    '\n4. Sore throat'
                                    '\n5. Coughing'
                                    '\n6. Muscle aches and pains'
                                    '\n7. Runny or stuffy nose'
                                    '\n8. Chest discomfort',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: ' Stay at home.',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' The virus is contagious and may infect other people. Avoid having a close contact with other people as flu viruses spread through airborne droplets from sneezing or coughing.\n'),
                                              TextSpan(text: '\n2.',),
                                              TextSpan(text: ' Get plenty of rest.',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' Resting will give your body energy to fight the flu virus and symptoms.\n'),
                                              TextSpan(text: '\n3.',),
                                              TextSpan(text: ' Drink plenty of fluids.',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' Fever is one of the common flu symptoms, associated with dehydration, which makes it essential to drink the right amount of water to stay hydrated.\n'),

                                              TextSpan(text: '\n4.',),
                                              TextSpan(text: ' Ask your doctor for your anti-viral medicines. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' The prescription of the doctor will help you fight the flu symptoms. \n'),

                                              TextSpan(text: '\n5.',),
                                              TextSpan(text: ' Treat your fever and aches. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' If you have fever and aches, you may need to take medications like ibuprofen, paracetamol, and acetaminophen. \n'),

                                              TextSpan(text: '\n6.',),
                                              TextSpan(text: ' Take care of your cough by taking expectorant. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' Expectorants are medications used for turning your mucus into liquid so you can take the phlegm out of your mouth. \n'),

                                              TextSpan(text: '\n7.',),
                                              TextSpan(text: ' If you have a humidifier or vaporizer at home, ',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: 'use it to help ease congestion and coughs. \n'),

                                              TextSpan(text: '\n8.',),
                                              TextSpan(text: ' Take lozenges.',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' Lozenges such as strepsils helps soothe a scratchy throat which is also helpful for coughs. \n'),

                                              TextSpan(text: '\n9.',),
                                              TextSpan(text: ' If you develop any of the following symptoms below, call for medical care: ',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n - Earache or drainage of the ear\n'),
                                              TextSpan(text: ' - Pain in the face or forehead followed by a thick yellow or green mucus that lasted for more than a week\n'),
                                              TextSpan(text: ' - A temperature of 38 °C or higher for infants with less than 3 months of age\n'),
                                              TextSpan(text: ' - A temperature higher than 37 °C for older children and adults\n'),
                                              TextSpan(text: ' - Sore throat or cough that does not go away\n'),
                                              TextSpan(text: '- Wheezing\n'),
                                              TextSpan(text: ' - Shortness of breath\n'),
                                              TextSpan(text: ' - Vomiting\n'),
                                              TextSpan(text: " - Or other symptoms that gets worse and don't go away after a few days."),



                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  '- Don’t use a warm mist as this will promote the growth of bacteria and molds.\n'
                                      "- Don't go outside and interact with other people to prevent the spreading of the virus.\n"
                                      '- Avoid sharing your personal items at home such as towels and eating utensils unless they are already washed after each use.\n'
                                      " - If you have a child with flu, don't give them aspirin. Ask for the doctor's advice.\n"
                                      " - Don't give cold or cough medicine to children aged under 6 years old."
                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('FLU',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class headache extends StatefulWidget {
  //const headacheReal({Key? key}) : super(key: key);
  final Injury injury;
  headache({required this.injury});

  @override
  State<headache> createState() => _headacheState();
}

class _headacheState extends State<headache> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              controller.animateToPage(
                  0,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut);

            },
            icon: Icon(Icons.keyboard_arrow_left_rounded,color: Colors.black,),
          ),
          IconButton(
              onPressed: () {
                controller.animateToPage(
                    1,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              icon: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.black,))

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          headache(context),
          migraine(context),
        ],
      ),
    );
  }

  Widget headache(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("When someone or you have headache, the best thing to do is:"
            "1. Assist them to sit or lie down."
            "2. Apply a cold, wet towel to their forehead or eyes."
            "3. Gently massage the person's neck and head."
            "4. If the person is an adult, you can suggest them to take some pain relievers, such as paracetamol tablets or ibuprofen. If the person is a child, you can give them paracetamol syrup."
            "5. Drink some water."
            "6. Seek for medical assistance if your headache:"
            "Appears suddenly or severely, Worsens in a single day and persists for several days, Causes loss of consciousness,"
            "Triggers seizures and loss of balance, Weakens the arms or legs, Is accompanied by numbness, Is accompanied by difficulty in speaking,"
            "Develops fever, stiffness of the neck, or show signs of rash, Is triggered by shifting head posture, coughing, sneezing, or physical activity");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1850,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.theconversation.com/files/175523/original/file-20170626-4492-mqyzj3.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1850,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Headache is a common condition that causes discomfort in the head or face. In most cases, it goes on its own without treatment. "
                                    "But for some, this can be a sign of a more serious condition, such as stroke, meningitis, and can be a result of head injuries.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('The possible causes of headaches are:',
                                  style: TextStyle(
                                      fontSize: 15,
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                      height: 1.50),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: '- When you have flu.\n'),
                                              TextSpan(text: '- When you are dehydrated.\n'),
                                              TextSpan(text: '- When you are stress or tired.\n'),
                                              TextSpan(text: '- When you are exposed to extremely hot or cold temperatures.\n'),
                                              TextSpan(text: '- When you drink excess alcohol or drug use.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: "Assist ",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                              TextSpan(text: 'them to ',),
                                              TextSpan(text: "sit or lie down.\n\n",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: "Apply a cold, wet towel ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to their '),
                                              TextSpan(text: "forehead or eyes.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: "Gently massage ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "the person's "),
                                              TextSpan(text: "neck and head.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'If the person is an '),
                                              TextSpan(text: 'adult',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ', you can suggest them to take some '),
                                              TextSpan(text: 'pain relievers',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ', such as '),
                                              TextSpan(text: 'paracetamol tablets or ibuprofen. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If the person is a '),
                                              TextSpan(text: 'child, ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'you can give them '),
                                              TextSpan(text: 'paracetamol syrup.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Drink some water.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: "Seek for medical assistance if your headache:\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '- Appears suddenly or severely.\n'),
                                              TextSpan(text: '- Worsens in a single day and persists for several days.\n'),
                                              TextSpan(text: '- Causes loss of consciousness.\n'),
                                              TextSpan(text: '- Triggers seizures and loss of balance.\n'),
                                              TextSpan(text: '- Weakens the arms or legs.\n'),
                                              TextSpan(text: '- Is accompanied by numbness.\n'),
                                              TextSpan(text: '- Is accompanied by difficulty in speaking.\n'),
                                              TextSpan(text: '- Develops fever, stiffness of the neck, or show signs of rash.\n'),
                                              TextSpan(text: '- Is triggered by shifting head posture, coughing, sneezing, or physical activity.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: "Don't shake your head too often.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: "Avoid caffeine, nicotine, and alcohol consumptions.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Avoid watching TVs or using your computer too much.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Keep your stress levels low.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('HEADACHE',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget migraine(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("Migraine headaches are a type of chronic headache. They can't be cured, "
            "but they can be controlled and improved. The most efficient strategy to deal with migraines is to "
            "combine medicine with behavioral adjustments and a healthy lifestyle.1. When you first notice the first symptom, "
            "if possible step away from whatever you were doing and find a calm environment.Turn the lights off. Migraines can "
            "make you more sensitive to light and sound so relaxing in a dark, and peaceful environment would help into calming your nerves. "
            "Apply hot or cold compresses to your head or neck to relieve pain. Ice packs have a numbing effect that might help to reduce pain, "
            "while hot packs and heating pads relieves tense muscles.Make yourself a caffeinated coffee. When consumed in small doses, caffeine "
            "can lessen migraine headaches in their early stages or enhance the pain-relieving effects of acetaminophen such as tylenol and aspirin. However,"
            " drinking too much caffeine can lead into withdrawal later on. 2. Migraines might keep you awake at night or prevent you from going asleep. "
            "Migraines are frequently triggered by a bad sleep routine. Here are some suggestions on getting a good night's sleep. Stick to a sleep schedule. "
            "Every day, even on weekends, get up and go to bed at the same hour. No naps for more than 30 minutes and do it during the day. Keep an eye on what "
            "you eat and drink such as caffeine, nicotine, and alcohol, as well as intense exercise and big meals, it can all disrupt sleep. Don't force yourself "
            "to sleep. If you can't sleep, listening to relaxing music, soaking in a warm bath, or reading a beloved book can help you sleep. Keep track of your medications. "
            "Some migraine treatments and medications may contain coffee or other stimulants, which can disrupt sleep. 3. Migraines and stress are frequently linked."
            " You won't be able to avoid daily stress, but you can manage it to assist manage your migraines: Don't waste time trying to fit in extra activities "
            "or duties. Find a way to leave some things out instead. Make good use of your time. Update your to-do list every day, both at work and at home. "
            "Divide major jobs into digestible segments and delegate what you can. Take some time off. If you're feeling tired, try some gradual stretches or a"
            " little walk to re-energize yourself for the task at hand. Improve/Change your mindset. Maintain an optimistic attitude. Shift directions if you "
            "find yourself wondering, 'This can't be done.' Instead, think to yourself,'This will be difficult, but I can make it work.' Have a good time. A natural "
            "technique to combat stress is to do something you enjoy. Every day, set aside at least 15 minutes to do something you enjoy may it be something as simple "
            "as playing a game, having coffee with a friend, or engaging in a hobby. Take it easy. Deep diaphragmatic breathing can help you relax. Every day, spend at "
            "least 10 minutes inhaling and exhaling gently and deeply. When you're finished, take a minute or two to sit quietly.");
      }
    }
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 4130,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.brisbanebulkbillingdoctor.com.au/wp-content/uploads/2019/10/Algester-Medical-Centre.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 4130,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("It's a kind of headache that generates strong throbbing pain or a pulsing sensation on one side of the head that can linger for hours or even days. "
                                    "Other symptoms includes sensitivity to light, noise, or scents; nausea or vomiting; loss of appetite and an upset stomach. The pain can be so intense that it makes it difficult to go about your everyday routine.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Migraines were believed to have a genetic basis, however the circumstances that cause them can vary from person to person and include the following:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                      height: 1.50),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: '- Stress\n'),
                                              TextSpan(text: '- Anxiety\n'),
                                              TextSpan(text: '- Lights that are bright or flashing\n'),
                                              TextSpan(text: '- Disturbing noises\n'),
                                              TextSpan(text: '- Strong odors\n'),
                                              TextSpan(text: '- Skipping meals.\n'),
                                              TextSpan(text: '- Caffeine withdrawals.\n'),
                                              TextSpan(text: '- Stress Sleeping excessively or insufficiently stress\n'),
                                              TextSpan(text: '- Unexpected changes in the weather or the environment.\n'),
                                              TextSpan(text: '- Overuse of medication, such as taking migraine medication too frequently.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Immediately seek for medical attention if you happen to experience the following symptoms:',
                                  style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                      height: 1.50),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: '- Feeling weak, dizzy, losing your balance or falling, numbness or tingling, or being unable to move your body\n'),
                                              TextSpan(text: '- Having peech difficulties, confusion, seizures, personality shifts, or inappropriate conduct.\n'),
                                              TextSpan(text: '- Experiencing double vision, fuzziness, or blind spots.\n'),
                                              TextSpan(text: '- Experiencing fever, breathlessness, stiff neck, or rash.\n'),
                                              TextSpan(text: '- A headache that keeps you up at night.'),
                                              TextSpan(text: '- Have headaches that are triggered by coughing, bending, sexual activity or other intense physical activity.\n'),
                                              TextSpan(text: '- Have a history of headaches but have noticed a recent change in your symptoms or pattern of attacks.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: "Migraine headaches are a type of chronic headache. ",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                              TextSpan(text: "They can't be cured, but they can be controlled and improved."
                                                  "The most efficient strategy to deal with migraines is to combine medicine with behavioral adjustments and a healthy lifestyle.\n\n",),
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'When you first notice the first symptom, if possible ',),
                                              TextSpan(text: "step away from whatever you were doing and find a calm environment.\n\n",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                              TextSpan(text: "- Turn the lights off. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Migraines can make you more sensitive to light and sound so relaxing in a dark, and peaceful environment would help into calming your nerves.\n\n'),
                                              TextSpan(text: "- Apply hot or cold compresses to your head or neck to relieve pain. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Ice packs have a numbing effect that might help to reduce pain, while hot packs and heating pads relieves tense muscles.\n\n"),
                                              TextSpan(text: '- Make yourself a caffeinated coffee. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'When consumed in small doses, caffeine can lessen migraine headaches in their early stages or enhance the pain-relieving effects of acetaminophen such as tylenol and aspirin. '),
                                              TextSpan(text: 'However, drinking too much caffeine can lead into withdrawal later on.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. ',),
                                              TextSpan(text: 'Migraines might keep you ',),
                                              TextSpan(text: 'awake at night or prevent you from going asleep.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Here are some suggestions on getting a good night's sleep:\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '- Stick to a sleep schedule. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Every day, even on weekends, get up and go to bed at the same hour. No naps for more than 30 minutes and do it during the day.\n\n",),
                                              TextSpan(text: "- Keep an eye on what you eat and drink ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "such as caffeine, nicotine, and alcohol, as well as intense exercise and big meals, it can all disrupt sleep.\n\n",),
                                              TextSpan(text: "- Don't force yourself to sleep. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "If you can't sleep, listening to relaxing music, soaking in a warm bath, or reading a beloved book can help you sleep.\n\n",),
                                              TextSpan(text: "- Keep track of your medications. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Some migraine treatments and medications may contain coffee or other stimulants, which can disrupt sleep.\n\n",),
                                              TextSpan(text: '3. ',),
                                              TextSpan(text: "Migraines and stress are frequently linked. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "You won't be able to avoid daily stress, but you can manage it to assist manage your migraines:\n\n",),
                                              TextSpan(text: "- Don't waste time trying to fit in extra activities or duties. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Find a way to leave some things out instead.\n\n",),
                                              TextSpan(text: "- Make good use of your time. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Update your to-do list every day, both at work and at home. Divide major jobs into digestible segments and delegate what you can.\n\n",),
                                              TextSpan(text: "• Take some time off. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "If you're feeling tired, try some gradual stretches or a little walk to re-energize yourself for the task at hand.\n\n",),
                                              TextSpan(text: "- Improve/Change your mindset. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Maintain an optimistic attitude. Shift directions if you find yourself wondering, ''This can't be done.'' Instead, think to yourself, ''This will be difficult, but I can make it work.'' \n\n",),
                                              TextSpan(text: "- Have a good time. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "A natural technique to combat stress is to do something you enjoy. Every day, set aside at least 15 minutes to do something you enjoy may it be something as simple as playing a game, having coffee with a friend, or engaging in a hobby.\n\n",),
                                              TextSpan(text: "- Take it easy. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Deep diaphragmatic breathing can help you relax. Every day, spend at least 10 minutes inhaling and exhaling gently and deeply. When you're finished, take a minute or two to sit quietly.",),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: "Do not skip meals and always hydrate yourself.\n",style: TextStyle(
                                                //fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: "Do not over do your exercise.\n",style: TextStyle(
                                                //fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Do not strain your eyes by staring at your screens.\n',style: TextStyle(
                                                //fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Do not take pain meds consecutively.\n',style: TextStyle(
                                                //fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Do not sleep too much nor too little.\n',style: TextStyle(
                                                //fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Do not ignore through the pain.\n',style: TextStyle(
                                                //fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: 'Do not go overboard with caffeine.\n\n',style: TextStyle(
                                                //fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('MIGRAINE',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class diarrhea extends StatefulWidget {
  //const diarrhea({Key? key}) : super(key: key);
  final Injury injury;
  diarrhea({required this.injury});

  @override
  State<diarrhea> createState() => _diarrhea();
}

class _diarrhea extends State<diarrhea> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          diarrhea(context),
          //migraine(context),
        ],

      ),
    );
  }

  Widget diarrhea(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("When you have diarrhea, there are some home remedies that to be consider "
            "Drink a lot of liquids such as water, juices and broths. "
            "Drink anti-diarrheal medications such as loperamide and bismuth subsalicylate to control the symptom. "
            "Try to take probiotics to help recover a healthy balance in the intestinal tract."
            "See a doctor if:"
            "The symptom continues for two or more days without any sign of being gone."
            "Dehydration."
            "If the stool has some blood or became black."
            "If you have fever."
            "Severe pain in abdomen ");

      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1660,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsnEobqFHuy4ym_ttfibZhaqyMGYj97VfU9ezOc6vaVgv5OYdBXIFTADcHY08V4qIROuk&usqp=CAU'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1660,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is a frequent movement of bowel and the stools are often watery and loosen. The causes can be from:'
                                    '\n- Viruses'
                                    '\n- Bacteria and Parasites'
                                    '\n- Medications (ex: antibiotics)'
                                    '\n- Being lactose intolerance'
                                    '\n- From fructose (a sugar commonly found in honey or fruits).'

                                    '\n- Artificial Sweeteners (a type of sugar that can be found in chewing gums and other sugar-free products).'

                                    '\n- Digestive disorders (ex: IBS, celiac disease, microscopic colitis, ulcerative colitis).'
                                    '\n'
                                    '\nSymptoms from diarrhea may include:'
                                    '\n- Nausea'
                                    '\n- Fever'
                                    '\n- Vomiting'
                                    '\n- Bloating of the body'
                                    '\n- Blood or Mucus in stools'
                                    '\n- Abdominal Pain / Cramps',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  //textAlign: TextAlign.justify,
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: ' Home remedies for diarrhea:',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n- Drink a lot of liquids such as water, juices and broths.\n'),
                                              TextSpan(text: '- Drink anti-diarrheal medications such as loperamide and bismuth subsalicylate to control the symptom.'),
                                              TextSpan(text: ' \n- Try to take probiotics to help recover a healthy balance in the intestinal tract.\n\n'),
                                              TextSpan(text: ' See a doctor if:\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '- The symptom continues for two or more days without any sign of being gone;\n'),

                                              TextSpan(text: '- Dehydration;\n'),
                                              TextSpan(text: '- If the stool has some blood or became black;\n'),
                                              TextSpan(text: '- If you have fever; or\n'),
                                              TextSpan(text: '- Severe pain in abdomen '),

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  '- Avoid drinking caffeine products and alcoholic drinks.\n'
                                      "- Avoid eating greasy and fried foods while you have diarrhea.\n"
                                      '- Avoid eating fruits and vegetables that can cause gas (ex: broccoli, prunes, green and leafy vegetables, corn and peppers).\n'
                                      "- Avoid eating dairy products if the symptom is severe."
                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('DIARRHEA',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class allergicreaction extends StatefulWidget {
  //const allergicreactionReal({Key? key}) : super(key: key);
  final Injury injury;
  allergicreaction({required this.injury});

  @override
  State<allergicreaction> createState() => _allergicreaction();
}

class _allergicreaction extends State<allergicreaction> {


  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              controller.animateToPage(
                  0,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut);

            },
            icon: Icon(Icons.keyboard_arrow_left_rounded,color: Colors.black,),
          ),
          IconButton(
              onPressed: () {
                controller.animateToPage(
                    1,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              icon: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.black,))

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          allergicreaction(context),
          anaphylaxis(context),
        ],
      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget allergicreaction(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The person may develop a rash, itchiness or swelling on their face, hands, or feet. So, watch for possible worsening of symptoms but for mild symptoms you can reference to the following:"
            "If you have a hay fever or hives consider taking an over-the-counter antihistamine such Diphenhydramine or Benadryl."
            "If you have a stuffy nose, take an over-the-counter decongestant such Loratadine or Sudafed."
            "If your eyes are itchy and watery, stop yourself from scratching it instead use an over-the-counter allergy eye drops like Bausch + Lomb Alaway Antihistamine Eye Drops to ease the discomfort."
            "For itchy allergic rash, don't touch nor scratch the area instead apply cold compresses and consider applying "
            "an over-the-counter hydrocortisone cream to ease the discomfort.");
      }
    }
    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1410,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.ctfassets.net/4f3rgqwzdznj/2TaXFCCvvdpN2MdWVmTpoE/4e3d68bea6db1eb537556cd181db8a14/cropped_womans_arm_allergic_rash-1337085512.jpg'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1410,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It is an abnormal reaction of the body to a harmless agent or allergens such as pollen, '
                                      'some foods, and others, often manifested by an itchy eyes, runny nose, wheezing, skin rash, and diarrhea.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'The person may develop a rash, itchiness or swelling on their face, hands, or feet. So, watch for possible worsening of symptoms but for mild symptoms you can reference to the following:\n\n', style: TextStyle(fontWeight: FontWeight.bold)),
                                              TextSpan(text: '- If you have a hay fever or hives consider taking an over-the-counter antihistamine such Diphenhydramine or Benadryl.\n\n'),
                                              TextSpan(text: '- If you have a stuffy nose, take an over-the-counter decongestant such Loratadine or Sudafed.\n\n'),
                                              TextSpan(text: '- If your eyes are itchy and watery, stop yourself from scratching it instead use an over-the-counter allergy eye drops like Bausch + Lomb Alaway Antihistamine Eye Drops to ease the discomfort.\n\n'),
                                              TextSpan(text: "- For itchy allergic rash, don't touch nor scratch the area instead apply cold compresses and consider applying an over-the-counter hydrocortisone cream to ease the discomfort.")

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                    '1. Do not give strong antihistamines to a child unless you have checked with a doctor first.\n'
                                        '2. Do not give the patient anything to drink or eat, even if they ask for it.\n'
                                        '3. If you have hives or rashes, do not scratch them and do not take hot baths or showers since they can make the itching worse.\n'
                                    , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 3.5,
                  child: Container(
                      height: 35,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('ALLERGIC REACTION', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget anaphylaxis(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If someone having anaphylaxis, the first thing to do is:"
            "• Call for an ambulance or 911 right away."
            "Ask if the person if they’re carrying an epinephrine autoinjector, such as an EpiPen or an Auvi-Q, on hand to treat an allergic reaction."
            "If the person claims they need to use an autoinjector, see if you can assist them in injecting the medication. Follow the instructions on the package but frequently autoinjector is pressed against the person's outer thigh."
            "Make sure the person is relaxed. Help the person to lie down on his or her back and lift their legs up, unless they are having breathing difficulties and need to sit up to help them breathe. If they happen to be pregnant, place them on their left side."
            "Loosen the person's clothing and cover them in a blanket."
            "While you wait for the ambulance, reassure them and make them as comfortable as possible. Prepare to tell the type of injector you injected and how much milligram it has, to the paramedics."
            "Seek immediate medical attention even if the symptoms appear to be improving. It's possible for the symptoms to return after anaphylaxis. Several hours of observation at a hospital are necessary."
            "If the patient is vomiting or bleeding from the lips, put him or her on their side to avoid choking."
            "Immediately start CPR if there are no symptoms of breathing, coughing, or movement. Continue to give chest compressions at a rate of around 100 per minute, until paramedics come."
        );
      }
    }

    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2220,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://pharmaceutical-journal.com/wp-content/uploads/2021/02/Anaphylaxis-symptoms-causes-and-diagnosis-SS20-3-scaled-e1613485280155.jpg'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2220,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It is the most severe type of allergic reaction and can be very fatal. It can happen in seconds or minutes after you have been exposed to anything that you are allergic to, such pollen or food. '
                                      'It causes your immune system to where your blood pressure drops abruptly and your airways narrow, making it difficult for you to breathe.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text:"When someone is experiencing an anaphylaxis, do the following:\n\n", style: TextStyle(fontWeight: FontWeight.bold)),
                                              TextSpan(text:"1. Call for an ambulance or 911 right away.\n\n "),

                                              TextSpan(text: '2. Ask if the person if they’re carrying an epinephrine autoinjector, such as an EpiPen or an Auvi-Q, on hand to treat an allergic reaction.\n\n'),
                                              TextSpan(text: "3. If the person claims they need to use an autoinjector, see if you can assist them in injecting the medication. Follow the instructions on the package but frequently autoinjector is pressed against the person's outer thigh.\n\n"),
                                              TextSpan(text: '4. Make sure the person is relaxed. Help the person to lie down on his or her back and lift their legs up, unless they are having breathing difficulties and need to sit up to help them breathe. If they happen to be pregnant, place them on their left side.\n\n'),
                                              TextSpan(text: "5. Loosen the person's clothing and cover them in a blanket.\n\n"),
                                              TextSpan(text:"6. While you wait for the ambulance, reassure them and make them as comfortable as possible. Prepare to tell the type of injector you injected and how much milligram it has, to the paramedics.\n\n"),
                                              TextSpan(text: '7. Seek immediate medical attention even if the symptoms appear to be improving. It is possible for the symptoms to return after anaphylaxis. Several hours of observation at a hospital are necessary.\n\n'),
                                              TextSpan(text: '8. If the patient is vomiting or bleeding from the lips, put him or her on their side to avoid choking.\n\n'),
                                              TextSpan(text: "9. Immediately start CPR if there are no symptoms of breathing, coughing, or movement. Continue to give chest compressions at a rate of around 100 per minute, until paramedics come."),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('WHAT NOT TO DO', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  '1. Do not panic, panicking will only stress you out more and will probably not help.\n'
                                      "2. Don't give the person anything to drink or eat, even if they ask for it.\n"
                                      "3. Do not rely on home remedies. The finest treatment choice will be administered by professionals. Homemade remedies aren't going to help much.\n"
                                      "4. Do not use over-the-counter medication without consulting a physician first, to avoid additional complications.\n"
                                      "5. Don't forget to take your medication as directed. It's not a good idea to deviate from the specified treatment schedule, even if the symptoms appear to be more tolerable.\n"
                                  , style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('ANAPHYLAXIS', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}

class stomachache extends StatefulWidget {
  //const stomachache({Key? key}) : super(key: key);
  final Injury injury;
  stomachache({required this.injury});
  @override
  State<stomachache> createState() => _stomachache();
}

class _stomachache extends State<stomachache> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          headache(context),
          //migraine(context),
        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget headache(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The home remedies for stomachache are:"
            "1. If you're drinking water, your body will have the necessary fluids to digest and absorb nutrients efficiently. This protects you from an upset stomach."
            "2. To prevent acid-reflux, avoid lying down for a couple of hours after eating."
            "3. If you've got an upset stomach, try adding ginger to your food or drinking it as a tea. Some all-natural ginger ales may also contain enough ginger to settle an upset stomach."
            "4. Mint is a traditional treatment for indigestion, gas, and diarrhea in Iran, Pakistan, and India."
            "5. Taking a warm bath or using a heating bag may help to ease the symptoms of an upset stomach. The effects of this method are temporary, and experts say it could also be beneficial to apply a heated bag or pad to the stomach for 20 minutes or until it goes cool."
            "6. The BRAT diet, an acronym for bananas, rice, applesauce and toast, can help decrease the number of stools a person passes and ease their diarrhea."
            "7. To avoid irritation of the throat, don't smoke and drink alcohol. Drinking alcohol irritates the stomach, increasing the likelihood of an upset stomach. If a person has vomited, smoking can make the tender tissue even more sore from stomach acids."
            "8. Avoiding hard-to-digest foods like cabbage, broccoli, beans, and whole grains can help reduce the risk of an upset stomach."
            "9. Juice from a lime or lemon, a teaspoon of baking soda, and a glass of water is said to help cure flatulence and indigestion. The carbonic acid produced in the mixture can also improve liver secretion and motility, making food pass through your system more quickly. Lime and lemon juices have nutrients that help you digest fats, alcohol, and reduce the acidity in your stomach."
            "10. Cinnamon contains antioxidants that may ease digestion and reduce the risk of irritation and damage to the digestive tract."
        );
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2110,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://st.depositphotos.com/2249091/4152/i/950/depositphotos_41522201-stock-photo-man-with-stomachache.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2110,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Abdominal pain can be felt anywhere in the area between your lower ribs and your pelvis. It may feel like aching, stabbing, burning, twisting, cramping, dull, or gnawing. There are many causes of abdominal pain.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: ' Home remedies:',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n\n1.'),
                                              TextSpan(text: " If you're drinking water,", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' your body will have the necessary fluids to digest and absorb nutrients efficiently. This protects you from an upset stomach.'),

                                              TextSpan(text: '\n\n2.'),
                                              TextSpan(text: " To prevent acid-reflux, ", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: 'avoid lying down for a couple of hours after eating.'),

                                              TextSpan(text: '\n\n3.'),
                                              TextSpan(text: " If you've got an upset stomach, ", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: 'try adding ginger to your food or drinking it as a tea. Some all-natural ginger ales may also contain enough ginger to settle an upset stomach.'),

                                              TextSpan(text: '\n\n4.'),
                                              TextSpan(text: " Mint", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' is a traditional treatment for indigestion, gas, and diarrhea in Iran, Pakistan, and India.'),

                                              TextSpan(text: '\n\n5.'),
                                              TextSpan(text: " Taking a warm bath or using a heating bag", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' may help to ease the symptoms of an upset stomach. The effects of this method are temporary, and experts say it could also be beneficial to apply a heated bag or pad to the stomach for 20 minutes or until it goes cool.'),

                                              TextSpan(text: '\n\n6.'),
                                              TextSpan(text: " The BRAT diet,", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' an acronym for bananas, rice, applesauce and toast, can help decrease the number of stools a person passes and ease their diarrhea.'),

                                              TextSpan(text: '\n\n7.'),
                                              TextSpan(text: " To avoid irritation of the throat, ", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: "don't smoke and drink alcohol. Drinking alcohol irritates the stomach, increasing the likelihood of an upset stomach. If a person has vomited, smoking can make the tender tissue even more sore from stomach acids."),

                                              TextSpan(text: '\n\n8.'),
                                              TextSpan(text: " Avoiding hard-to-digest foods", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' like cabbage, broccoli, beans, and whole grains can help reduce the risk of an upset stomach.'),

                                              TextSpan(text: '\n\n9.'),
                                              TextSpan(text: " Juice from a lime or lemon,", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '  a teaspoon of baking soda, and a glass of water is said to help cure flatulence and indigestion. The carbonic acid produced in the mixture can also improve liver secretion and motility, making food pass through your system more quickly. Lime and lemon juices have nutrients that help you digest fats, alcohol, and reduce the acidity in your stomach.'),

                                              TextSpan(text: '\n\n10.'),
                                              TextSpan(text: " Cinnamon contains antioxidants", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: ' that may ease digestion and reduce the risk of irritation and damage to the digestive tract.'),

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  '- Avoid eating dairy products\n'
                                      "- Avoid eating fried foods\n"
                                      '- Avoid drinking soda\n'
                                      "- Avoid eating spicy foods\n"
                                      "- Avoid eating raw fruits and vegetables"
                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 165,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('STOMACHACHE',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class chickenpox extends StatefulWidget {
  //const chickenpox({Key? key}) : super(key: key);
  final Injury injury;
  chickenpox({required this.injury});
  @override
  State<chickenpox> createState() => _chickenpox();
}

class _chickenpox extends State<chickenpox> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [


        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          chickenpox(context),
          //migraine(context),
        ],

      ),
    );
  }
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget chickenpox(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("To lessen the itchiness or pain of the chickenpox, here are some tips to reduce it:"
            "1. A cold bath that has baking soda, aluminum acetate, uncooked finely ground oatmeal that is made for soaking"
            "2. Calamine lotion applied to some spots"
            "3. Antihistamines such as benadryl for itchiness of the skin. (Only if it is safe for the person to use"
            "4. Acetaminophen for fever"
            "5. A diet that is soft and dry. (Only if chickenpox developed in the mouth)"
            "If the person has fever and it lasts longer than 4 days, immediately call a doctor/hospital"
            "It is better to prescribe a doctor to determine the appropriate treatment.");
      }
    }


    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1910,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/642x361_Chickenpox.jpg?w=1155&h=7581'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1910,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Chickenpox is an infection that causes an itchy rash with fluid which is filled with blisters. It is caused by the varicella-zoster virus and is highly infectious to those people who have not had the disease in the past or not vaccinated against it. It is a mild disease but, it can be dangerous and can lead to symptoms such as:'
                                    '\n1. Pneumonia'
                                    '\n2. Dehydration'
                                    '\n3. Toxic shock syndrome'
                                    '\n4. Encephalitis or Inflammation of the brain'
                                    '\n5. Sepsis or the bacterial infections of the soft tissues, bloodstream, bones or skin'
                                    '\n6. Death'
                                    '\n\nThere are three phases in chickenpox:'
                                    '\n1. Red Bumps / Raised Pink which is often called as Papules, it breaks out in several days.'
                                    '\n2. Small Fluid Filled Blisters or Vesicles, it form in a day then break and leaks out.'
                                    '\n3. Crusts and Scabs, they are the blisters that broke down and it takes several days to recover and heal.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: "To lessen the itchiness or pain of the chickenpox, here are some tips to reduce it:", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n1. A cold bath that has baking soda, aluminum acetate, uncooked finely ground oatmeal that is made for soaking.'),
                                              TextSpan(text: '\n2. Calamine lotion applied to some spots'),

                                              TextSpan(text: '\n3. Antihistamines such as benadryl for itchiness of the skin. (Only if it is safe for the person to use).'),

                                              TextSpan(text: '\n4. Acetaminophen for fever.'),

                                              TextSpan(text: '\n5. A diet that is soft and dry. (Only if chickenpox developed in the mouth)'),

                                              TextSpan(text: '\n6. A cold bath that has baking soda, aluminum acetate, uncooked finely ground oatmeal that is made for soaking.'),

                                              TextSpan(text: '\n\nIf the person has fever and it lasts longer than 4 days, immediately call a doctor/hospital.'),
                                              TextSpan(text: '\n\nIt is better to prescribe a doctor to determine the appropriate treatment.')


                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  '- Avoid scratching and popping the scabs as there is a chance that those can become infected from other bacterias, healing will be slowed down and scratching can cause scarring. \n'
                                      "- Do not use aspirin containing products just to lessen the fever from chickenpox. As there is a risk of having the Reye's syndrome, a disease that damages the brain and liver that can lead to death.\n"
                                      '- Avoid going out of the house when the blisters are new and fresh at it can infect others. When the scabs are dried and crusted, it means that it is not infectious anymore.'

                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('CHICKENPOX',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class constipation extends StatefulWidget {
  //const constipationReal({Key? key}) : super(key: key);

  final Injury injury;
  constipation({required this.injury});

  @override
  State<constipation> createState() => _constipation();
}

class _constipation extends State<constipation> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [


        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          constipation(context),
          //migraine(context),
        ],

      ),
    );
  }
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget constipation(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The following are some remedies for constipation:"
            "Drink plenty of water to avoid being dehydrated as it can make you constipated."
            "Increase you fiber intake to increase the consistency and bulk of bowel movements to make it easier to flow through."
            "Try to exercise more, as there are research studies that shows exercising can help improve the symptoms for constipation."
            "Drink coffee as it can help to relieve constipation by stimulating the muscles of the gut and it contains a small amount of fiber."
            "Take some herbal laxatives to help treat your constipation."
            "Eat some probiotic foods and probiotic supplements as probitics helps you to put a stop in constipation."
            "Eating prebiotic foods can help expand the frequency of bowel movement and it can make the stool softer."
            "Eat prunes, it can help fight the constipation"
        );
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1910,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2021/02/constipation_types_GettyImages611181458_Header-1024x575.jpg?w=1155&h=1528'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1910,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It occurs when your bowel movements  become less recurrent and stools becomes hard to pass through. Mostly it happens when you have changes in your diet routine or due to insufficient intake of fiber in your body. '
                                    '\n\nConstipation includes:'
                                    '\n- The stool are dry and hard and difficult to pass.'
                                    '\n- The bowel movement is painful.'
                                    '\n- A feeling that you did not fully emptied your bowels.'
                                    '\n\nSome complications includes:'
                                    '\n- Hemorrhoids or the swelling and inflamed veins of the rectum.'
                                    '\n- Anal Fissures or the tears in the lining of your anus from the result of a stool hardened and is trying to pass through.'
                                    '\n- Diverticulitis or the infection in pouches that is often formed off the colon wall from stool that have been trapped and infected.'
                                    '\n- Fecal Impaction or the piled up stool in the rectum and anus.'
                                    '\n- Stress Urinary Incontinence or the damaged pelvic floor muscles from straining to move the bowels.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  //textAlign: TextAlign.justify,
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: "The following are some remedies for constipation:", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n - Drink plenty of water to avoid being dehydrated as it can make you constipated.'),
                                              TextSpan(text: '\n- Increase you fiber intake to increase the consistency and bulk of bowel movements to make it easier to flow through.'),

                                              TextSpan(text: '\n- Try to exercise more, as there are research studies that shows exercising can help improve the symptoms for constipation.'),

                                              TextSpan(text: '\n - Drink coffee as it can help to relieve constipation by stimulating the muscles of the gut and it contains a small amount of fiber.'),

                                              TextSpan(text: '\n-  Take some herbal laxatives to help treat your constipation.'),

                                              TextSpan(text: '\n- Eat some probiotic foods and probiotic supplements as probitics helps you to put a stop in constipation.'),

                                              TextSpan(text: '\n- Eating prebiotic foods can help expand the frequency of bowel movement and it can make the stool softer.'),

                                              TextSpan(text: '\n- Eat prunes, it can help fight the constipation.')


                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  '- Avoid eating some dairy foods as it can cause constipation and it has an effect on the movement of the gut.\n'
                                      "- Do not eat too much processed foods.\n"
                                      '- Do not drink alcoholic beverages as it can harden your stool.\n'
                                      '- Do no skip exercises, skipping it slows your digested food to pass through the large intestine.\n'
                                      '- Do not rely on taking laxatives.'

                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('CONSTIPATION',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class rashes extends StatefulWidget {
  //const rashesReal({Key? key}) : super(key: key);
  final Injury injury;
  rashes({required this.injury});
  @override
  State<rashes> createState() => _rashes();
}

class _rashes extends State<rashes> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          rashes(context),
          //migraine(context),
        ],

      ),
    );
  }
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget rashes(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("Infectious and non-infectious rashes have different medical treatments."
            "The following treatments are effective for most non-infectious rashes:"
            "Use cortisone creams to relieve itching."
            "Apply Lubrication and skin care lotions to prevent dryness."
            "Apply some over-the counter topical steroids to control the rashes."
            "Take antihistamine medication to control symptoms and lessen itching."
            "Take some over-the counter antibiotics for rashes that have developed infection."
            "In severe cases, immediately seek for medical attention."
            "Fungus, viral, and bacteria-caused infectious rashes are frequently treated with one or more of the following:"
            "Use antifungal drugs such as clotrimazole or fluconazole, which can be used topically or taken orally."
            "Take antiviral drugs including famciclovir, acyclovir, and valacyclovir, which can be taken orally or intravenously."
            "Use some antibiotics may it be topical or oral or antibacterial drugs such as penicillin and cephalosporin."
            "Make sure to have vaccination against chickenpox and shingles."
            "Depending on the underlying reason and the severity of the rash, the treatment is usually provided.");
      }
    }
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2780,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.theconversation.com/files/209558/original/file-20180308-30983-e4u830.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2780,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is medically known as dermatitis, a skin condition characterized by irritation, swelling or puffiness of the skin. Many rashes are red, painful, irritated and itchy which might result into blisters or exposed skin patches. A rash can appear in one part of the body or all over the body, and it can have a variety of appearances depending on tits cause. It could be a symptom of a medical problem or a side effect of a medication or treatment. Some causes of this are allergies, infection, heat, and immune system disorder.'
                                    '\n\nIf you have any of the following symptoms, you should contact a doctor or dermatologist right away:'
                                    '\n- If the patient also got other symptoms such as joint pain, sore throat, and fever.'
                                    '\n- If there are bruises that are not related to injuries.'
                                    '\n- Encountered a rash or blister that affects the entire body.'
                                    '\n- Both the skin and mucous membranes are affected by the rash such as mouth, nose, eyes, anus, or genitals.'
                                    '\n- Despite home care or over-the-counter medications, your symptoms worsen.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: "Infectious and non-infectious rashes have different medical treatments."),
                                              TextSpan(text: "\n\nThe following treatments are effective for most non-infectious rashes:", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n - Use cortisone creams to relieve itching.'),
                                              TextSpan(text: '\n- Apply Lubrication and skin care lotions to prevent dryness.'),

                                              TextSpan(text: '\n- Apply some over-the counter topical steroids to control the rashes.'),

                                              TextSpan(text: '\n - Take antihistamine medication to control symptoms and lessen itching.'),

                                              TextSpan(text: '\n-  Take some over-the counter antibiotics for rashes that have developed infection.'),

                                              TextSpan(text: '\n- In severe cases, immediately seek for medical attention.'),

                                              TextSpan(text: '\n\nFungus, viral, and bacteria-caused infectious rashes are frequently treated with one or more of the following:', style: TextStyle(
                                                  fontWeight: FontWeight.bold)),

                                              TextSpan(text: '\n- Use antifungal drugs such as clotrimazole or fluconazole, which can be used topically or taken orally.'),
                                              TextSpan(text: '\n- Take antiviral drugs including famciclovir, acyclovir, and valacyclovir, which can be taken orally or intravenously.'),
                                              TextSpan(text: '\n- Use some antibiotics may it be topical or oral or antibacterial drugs such as penicillin and cephalosporin.'),
                                              TextSpan(text: '\n- Make sure to have vaccination against chickenpox and shingles.'),
                                              TextSpan(text: '\n- Depending on the underlying reason and the severity of the rash, the treatment is usually provided.')


                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  '- Do not use bar soaps because it can dry out your skin.\n'
                                      "- Do not exfoliate your skin because it may aggravate your problems\n"
                                      '- Do not use rubbing alcohol on your skin. It does not help with healing nor killing infectious bacteria; instead, it stings, dries out your skin, and aggravates rashes such as eczema.\n'
                                      '- Do not use hydrogen peroxide or bleach to clean exposed wounds. These things can aggravate the rash and prevent it from healing.\n'
                                      '- Do not use a triple-antibiotic ointment like neosporin. It doesn’t kill the bacteria that cause skin infections, also, one of its ingredients may trigger an allergic reaction on the skin.\n'
                                      '- Do not use mild lotions. They spread easily but in comparison to cream, oil, or petroleum-based treatments, they do not deliver nearly as much moisture.\n'
                                      '- Do not use harsh cleansers and cosmetics. Some products may contain harsh chemicals such as bleach, alcohol, sodium hypochlorite, or trisodium phosphate, which can irritate and dry your skin even more. Use dermatologist-approved products whenever possible.\n'
                                      '- Do not take long, and hot baths. Showers should be at lukewarm temperatures because they are less likely to dehydrate your skin. You should also avoid soaking in a hot tub for too long, since this can cause your skin to dry up and itch even more.\n'

                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('RASHES',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class handfootmouth extends StatefulWidget {
 //const handfootmouthReal({Key? key}) : super(key: key);
  final Injury injury;
  handfootmouth({required this.injury});
  @override
  State<handfootmouth> createState() => _handfootmouth();
}

class _handfootmouth extends State<handfootmouth> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          handfootmouth(context),
          //migraine(context),
        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget handfootmouth(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("There are no specific medical treatment for hand, foot, and mouth disease. Antibiotics will not help since it is caused by a virus. It normally goes away on its own after 7 to 10 days. While your child is experiencing the symptoms you may do the following to help them reduce the symptoms and feel better:"
            "Make sure your child is drinking lots of fluids and keep them hydrated."
            "Using lukewarm water and soap, wash the skin and pat it dry. If a blister pops, apply some antibiotic ointment on it and cover it with a tiny bandage to prevent infection."
            "Take over-the-counter pain medications such as ibuprofen like Advil and Motrin or acetaminophen like Tylenol, as well as numbing mouth sprays to help relive some discomfort."
            "For rashes, use an anti-itch cream such as calamine."
            "Eat cold delights like ice pops, yogurt, or smoothies to help sooothe a sore throat."
            "Immediately consult a doctor if your child have any of the following symptoms:"
            "If your child is having trouble swallowing and can’t take fluids."
            "If your child is showing signs of dehydration, like a dry or sticky mouth, sunken eyes, or decreased urine output."
            "If your child's fever lasts longer than three days."
            "If your child's immune system is compromised."
            "If your child's signs and symptoms are severe."
            "If after ten days, the symptoms have not yet improved."
            "If your child is really young, especially if he or she is younger than 6 months.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2030,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/11/shutterstock_1652101321_thumb-732x549.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2030,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is a highly contagious viral infection that causes ulcers inside or around the mouth, as well as a rash or blisters on the hands, feet, legs, or buttocks in children. It is caused by viruses from the Enterovirus genus called coxsackievirus. It can be uncomfortable, but it is not dangerous.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: "There are no specific medical treatment for hand, foot, and mouth disease. Antibiotics will not help since it is caused by a virus. It normally goes away on its own after 7 to 10 days. While your child is experiencing the symptoms you may do the following to help them reduce the symptoms and feel better:"),
                                              TextSpan(text: "\n\nMake sure your child is drinking lots of fluids", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: 'and keep them hydrated. '),

                                              TextSpan(text: "\n\nUsing lukewarm water and soap, ", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: 'wash the skin and pat it dry. If a blister pops, apply some antibiotic ointment on it and cover it with a tiny bandage to prevent infection'),

                                              TextSpan(text: "\n\nTake over-the-counter pain medications ", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: 'such as ibuprofen like Advil and Motrin or acetaminophen like Tylenol, as well as numbing mouth sprays to help relive some discomfort.'),

                                              TextSpan(text: "\n\nFor rashes, ", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: 'use an anti-itch cream such as calamine.'),

                                              TextSpan(text: "\n\nEat cold delights ", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: 'like ice pops, yogurt, or smoothies to help sooothe a sore throat.'),

                                              TextSpan(text: '\n\nImmediately consult a doctor if your child have any of the following symptoms:', style: TextStyle(
                                                  fontWeight: FontWeight.bold)),

                                              TextSpan(text: '\n- If your child is having trouble swallowing and can’t take fluids.'),

                                              TextSpan(text: '\n- If your child is showing signs of dehydration, like a dry or sticky mouth, sunken eyes, or decreased urine output.'),

                                              TextSpan(text: "\n- If your child's fever lasts longer than three days."),

                                              TextSpan(text: "\n- If your child's signs and symptoms are severe."),

                                              TextSpan(text: "\n- If your child's immune system is compromised."),

                                              TextSpan(text: "\n- If after ten days, the symptoms have not yet improved."),

                                              TextSpan(text: "\n- If your child is really young, especially if he or she is younger than 6 months."),


                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  '- Do not let your child to be dehydrated.\n'
                                      "- Do not share utensils or drinking cups.\n"
                                      '- DDo not send your child to preschool or day care until the rashes are gone and he or she is feeling better.'
                                      '- Do not give aspirin to children or teenagers because it can trigger Reye syndrome, uncommon but serious condition.'
                                      '- Do not let your child drink hot beverages, sodas, or acidic drinks/foods like citrus juice, tomato sauce, and etc. they they can aggravate the pain more.'

                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 4.9,
                  child: Container(
                      height: 35,
                      width: 260,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('HAND, FOOT AND MOUTH DISEASE',style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class soreeyes extends StatefulWidget {
  //const soreeyesReal({Key? key}) : super(key: key);
  final Injury injury;
  soreeyes({required this.injury});
  @override
  State<soreeyes> createState() => _soreeyes();
}

class _soreeyes extends State<soreeyes> {


  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          soreeyes(context),
          //migraine(context),
        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget soreeyes(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The best thing to do when you have sore eyes is:"
            "Immediately call 911 and seek for a medical attention if the following scenarios happens:"
            "A foreign item struck or became lodged in your eye, causing pain."
            "A chemical sprayed in your eye causing your discomfort."
            "Your eye pain is accompanied by a fever, headache, or extraordinary sensitivity to light."
            "You notice a sudden difference in your vision."
            "You begin to see halo effects surrounding lights."
            "Your eye is swollen, or the area around your eye is swollen."
            "You're having trouble keeping your eyes open."
            "It's difficult for you to move your eye."
            "Your eye is filled with blood or pus(yellowish discharge)."
            "Make sure to wash your hands regularly with soap and warm water for at least 20 seconds. Before and after cleaning, or administering eye drops or ointment to, your infected eye, wash them thoroughly."
            "Remove any discharge from your eyes with clean tissue paper, or with cotton wool soaked in water."
            "To ease discomfort, place a warm, damp towel over your eyelids."
            "Taking rest breaks from the use of digital screens"
            "Remove any eye make up or contact lenses and if applicable just stick with eyeglasses to rest the eyes."
            "With the recommendation of an eye doctor, use over-the-counter lubricant eye drops, gels, or ointments.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2075,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgVgsoUc_GdYIzlz3LxJv4YzjoZk35SDUBsDyHocsFYMuTiAEQHGtJKq4lCNcYhpzWXOk&usqp=CAU'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height:2075,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("It is also known as 'conjunctivitis', which is defined as the redness and inflammation of the membranes (conjunctiva) that cover the whites of the eyes and the inner sections of the eyelids. It could be caused by a bacterial or viral infection, or it could be caused by inhaling an allergen like pollen.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: "Immediately call 911 and seek for a medical attention if the following scenarios happens:", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n- A foreign item struck or became lodged in your eye, causing pain.'),
                                              TextSpan(text: '\n- A chemical sprayed in your eye causing your discomfort.'),

                                              TextSpan(text: '\n- Your eye pain is accompanied by a fever, headache, or extraordinary sensitivity to light.'),

                                              TextSpan(text: '\n- You notice a sudden difference in your vision.'),

                                              TextSpan(text: '\n- You begin to see halo effects surrounding lights.'),

                                              TextSpan(text: '\n- Your eye is swollen, or the area around your eye is swollen.'),

                                              TextSpan(text: '\n- You are having trouble keeping your eyes open.'),

                                              TextSpan(text: '\n- It is difficult for you to move your eye.'),

                                              TextSpan(text: '\n- Your eye is filled with blood or pus(yellowish discharge).'),

                                              TextSpan(text: '\n\n For first aid, follow the following:', style: TextStyle(
                                                  fontWeight: FontWeight.bold)),

                                              TextSpan(text: '\n- Make sure to wash your hands regularly with soap and warm water for at least 20 seconds. Before and after cleaning, or administering eye drops or ointment to, your infected eye, wash them thoroughly.'),
                                              TextSpan(text: '\n- Remove any discharge from your eyes with clean tissue paper, or with cotton wool soaked in water.'),
                                              TextSpan(text: '\n- To ease discomfort, place a warm, damp towel over your eyelids.'),
                                              TextSpan(text: '\n- Taking rest breaks from the use of digital screens.'),
                                              TextSpan(text: '\n- Remove any eye make up or contact lenses and if applicable just stick with eyeglasses to rest the eyes.'),
                                              TextSpan(text: '\n- With the recommendation of an eye doctor, use over-the-counter lubricant eye drops, gels, or ointments.')

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  '- Avoid using soap or shampoo near your eyes.\n'
                                      "- Avoid using the same eye drop dispenser/bottle for infected and non-infected eyes.\n"
                                      '- Do not share personal stuff like pillows, washcloths, towels, eye drops, makeup brushes, contact lenses, contact lens storage cases, or eyeglasses.\n'
                                      '- Do not wear any eye make up or contact lenses until the symptoms cleared up and also you may need to replace your contact lenses, as well as the container to make sure that you do not get infected once again.\n'
                                      '- Do not touch or rub the infected eye to avoid irritating and infecting your eyes further or distributing it to an uninfected eye.\n'
                                      '- Do not give ever give ibuprofen or any strong medication to an infant younger than 6 months old.'

                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SORE EYES',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class asthma extends StatefulWidget {
  //const asthmaReal({Key? key}) : super(key: key);
  final Injury injury;
  asthma({required this.injury});
  @override
  State<asthma> createState() => _asthma();
}

class _asthma extends State<asthma> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          asthma(context),
          //migraine(context),
        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget asthma(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The best thing to do when you  have asthma is: "
            "Immediately call for an ambulance or 911 or any nearvy hospitals when you find yourself in any of the following situations:"
            "If the individual is not breathing."
            "If their asthma has suddenly gotten worse or isn't getting better."
            "If the person is suffering an asthma attack and there are no medication to treat the symptoms or to ease the patient's discomfort."
            "If it's unclear whether the person has asthma or not but having the symptoms."
            "The person has a history of anaphylaxis. Even if there are no skin complaints, make sure to give the adrenaline autoinjector first and then the reliever or the inhaler.");
      }
    }
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1360,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.news18.com/ibnlive/uploads/2021/11/asthma-16357548084x3.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1360,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("It is also known as 'bronchial asthma', a chronic, noncommunicable disease that cannot be treated which causes your airways to become inflamed and constricted, making it difficult to breathe and causing coughing and a whistling or wheezing sound when you exhale.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: "Immediately call for an ambulance or 911 or any nearvy hospitals when you find yourself in any of the following situations:", style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n- If the individual is not breathing.'),
                                              TextSpan(text: '\n- If their asthma has suddenly gotten worse or is not getting better.'),

                                              TextSpan(text: "\n- If the person is suffering an asthma attack and there are no medication to treat the symptoms or to ease the patient's discomfort."),

                                              TextSpan(text: '\n- If it is unclear whether the person has asthma or not but having the symptoms.'),

                                              TextSpan(text: '\n- The person has a history of anaphylaxis. Even if there are no skin complaints, make sure to give the adrenaline autoinjector first and then the reliever or the inhaler.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  '- Make sure to avoid lying down while you’re having an asthma attack, since this can make symptoms more worse.\n'
                                      "- Don’t forget your inhaler(only if you have a prescribed one).\n"                                      "- Don’t forget your inhaler(only if you have a prescribed one).\n"
                                      "- Avoid smoking and any alcohol consumption.\n"
                                      "- Don’t over eat and avoid ingesting spicy food\n"
                                      "- Make sure you talk to your physician before beginning an exercise program to proceed to it safely.\n"

                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('ASTHMA',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class fractures extends StatefulWidget {
  //const fracture({Key? key}) : super(key: key);
  final Injury injury;
  fractures({required this.injury});

  @override
  State<fractures> createState() => _fractures();
}

class _fractures extends State<fractures> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          fractures(context),
          //migraine(context),
        ],

      ),
    );
  }

  Widget fractures(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The immediate response that needs to be done when a person has fractured bone is to seek medical attention. Call 911 or nearby hospitals when the person is:"
            "1. The person is unresponsive or not moving. It is better to begin CPR to that person if breathing or heartbeat is unresponsive."
            "2. When there is a lot of blood loss."
            "3. Light touches or pressure on the body causes pain."
            "4. The injured part lof the body looks disfigured."
            "5. If it is an Open Fracture."
            "6. If you feel that there is broken parts of the bone in head, back or neck."
            "While waiting for medical attention, do the following steps first:"
            "1. Stop the bleeding by applying pressure to the injured area with a sterile bandage, a clean cloth or clothing."
            "2. Immobilize the injured area by using splint to the area of the fractured sites to reducee discomfort around the area."
            "3. Get some ice or pack of ice then wrap it in a cloth or towel and apply it around the injured area to reduce the pain and limit the swelling."
            "4. If the person is having a hard time breathing, lay the person down and the head should be slightly lower than the trunk then if possible, elevate the legs.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1950,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2021/09/GettyImages-524759355_header-1024x575.jpg?w=1155&h=1528'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1950,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It can be a partial or complete break of a bone in a persons body.'
                                    '\n\nThere are 6 categories of bone fractures:'
                                    '\n1. Open Fracture (or Compund Fracture) - is a fracture that is deep and cuts through skin, it can be seen outside the body. '
                                    '\n2. Closed Fracture (or Simple Fracture) - is a fracture that does not cut through skin.'
                                    '\n3. Partial Fracture - the bone is not completely broken'
                                    '\n4. Complete Fracture - the bone is completely seperated and broken.'

                                    '\n5. Stable Fracture - the broken ends of the fractured bone is still in the same place.'

                                    '\n6. Displaced Fracture - the broken end of the fratured bone has spaces between them. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'The immediate response that needs to be done when a person has fractured bone is to seek medical attention. Call 911 or nearby hospitals when the person is:',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n1. The person is unresponsive or not moving. It is better to begin CPR to that person if breathing or heartbeat is unresponsive. \n'),
                                              TextSpan(text: '2. When there is a lot of blood loss.\n'),
                                              TextSpan(text: '3. Light touches or pressure on the body causes pain.\n'),
                                              TextSpan(text: '4. The injured part lof the body looks disfigured.\n'),
                                              TextSpan(text: '5. If it is an Open Fracture\n'),

                                              TextSpan(text: '6. If you feel that there is broken parts of the bone in head, back or neck.\n'),
                                              TextSpan(text: '\nWhile waiting for medical attention, do the following steps first:\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '1. Stop the bleeding by applying pressure to the injured area with a sterile bandage, a clean cloth or clothing.\n'),
                                              TextSpan(text: '2. Immobilize the injured area by using splint to the area of the fractured sites to reducee discomfort around the area.\n'),
                                              TextSpan(text: '3. Get some ice or pack of ice then wrap it in a cloth or towel and apply it around the injured area to reduce the pain and limit the swelling.\n'),
                                              TextSpan(text: '4. If the person is having a hard time breathing, lay the person down and the head should be slightly lower than the trunk then if possible, elevate the legs.'),

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  "- Don't try to realign the fractured bones or try to push the bone that is sticking out of the skin.\n"
                                      "- Don't move the person if not necessary to avoid further pain and injurt to the person.\n"
                                      "- Don't apply the ice directly in the skin, use a towel or any materials that can cover the ice.\n"
                                      "- If not trained to do the splint, it is better to not try it and just wait for medical attention."
                                      "- Don't touch the exposed bone or the injured area, touch it if only necessary."
                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('FRACTURES',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class sprain extends StatefulWidget {
  //const sprainReal({Key? key}) : super(key: key);
  final Injury injury;
  sprain({required this.injury});
  @override
  State<sprain> createState() => _sprain();
}

class _sprain extends State<sprain> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          sprains(context),
          //migraine(context),
        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget sprains(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("Initial Treatment for a sprined part of the body includes:"
            "Resting of the injured joint."
            "Applying ice that is covered with towel / ice pack to the injured joint for 10 minutes. Do this 4-8 times a day."
            "Continuous Pressure (Compression) on the injured area will help reduce the swelling."
            "Keep the injured area elevated on a pillow or keep it above the chest level."
            "You should seek medical attention if:"
            "Numbness is present in any part of the injured area."
            "The bones of the injured joint causes severe pain."
            "The injured joint / area cannot be moved");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1680,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.shopify.com/s/files/1/0763/4541/files/Ankle-Sprain-Pain-880x555.jpg?v=1578987088'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1680,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is the tearing or stretching of ligaments most commmonly in the ankles. (Ligaments are the tough band of thee fiborius tissue that connects the bones in the joints).'
                                    '\n\nThe three most commmon spots for sprains are the:'
                                    '\n- Ankle sprain happens when your foot turns inward as you land or turn on the ankle '
                                    '\n- Wrist sprain happens when you land and fall on an outstrecthed hand'
                                    '\n- Knee sprain happens after a blow to the knee or when you fall. Or when the knee suddenly twist'
                                    '\n\nSigns and symptoms of sprains may include:'
                                    '\n- Body Pain'
                                    '\n- Swelling, which may sggest that there is an inflammation within the joint or soft tissue around the affected joint'
                                    '\n- Bruised affected body joint'
                                    '\n- Instabiity around the knee or ankle'
                                    '\n- Inability to move the joint',

                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Initial Treatment for a sprained part of the body includes:',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n- Resting of the injured joint.\n'),
                                              TextSpan(text: '- Applying ice that is covered with towel / ice pack to the injured joint for 10 minutes. Do this 4-8 times a day.\n'),
                                              TextSpan(text: '- Continuous Pressure (Compression) on the injured area will help reduce the swelling. \n'),
                                              TextSpan(text: '- Keep the injured area elevated on a pillow or keep it above the chest level.\n\n'),
                                              TextSpan(text: 'You should seek medical attention if:\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '- Numbness is present in any part of the injured area.\n'),
                                              TextSpan(text: '- The bones of the injured joint causes severe pain.\n'),
                                              TextSpan(text: '- The injured joint / area cannot be moved.\n'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  "- Do not try to walk or run, just rest to avoid further damage to the joint.\n"
                                      "- Do not ignore it as it can lead to chronic pain and inflammation and there is a chance that it can develop into arthritis.\n"
                                      "- Do not delay any medical treatment as the injured joint can heal for a long time if not treated properly.\n"
                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SPRAINS',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class tear extends StatefulWidget {
  //const tearReal({Key? key}) : super(key: key);
  final Injury injury;
  tear({required this.injury});

  @override
  State<tear> createState() => _tear();
}

class _tear extends State<tear> {


  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          headache(context),
          //migraine(context),
        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget headache(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("To treat a tear, Do the RICE treatment or Rest, Ice, Compression and Elevation technique."
            "Drinks some over the counter pain medicines such as Ibuprofen medicines."
            "Partial Tears can be managed by a Physical Theraphy session or with bracings and crutches."
            "But severe injury needs the medical attention and it might need surgery depending how bad it is"
        );
      }
    }
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1275,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://images.immediate.co.uk/production/volatile/sites/34/2020/05/how-does-a-soft-tissue-injury-heal-a86bb31-scaled.jpg?quality=90&resize=620%2C413'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1275,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It often occurs when the fibrous tissue of the  muscle, ligament or tendon has been ripped. It is more dangerous than having sprains. Most common cause of ligament tears are awkward landings and twisted body parts. One example of tear is the Anterior Cruciate Ligament or ACL tear in the knee part of the body.'
                                    '\n\nSymptoms of tear include:'
                                    '\n- Severe and sudden pain in the affected area'
                                    '\n- There is a feeling that a joint is loosen'
                                    '\n- Sudden bruising'
                                    '\n- Inability to move the affected area'
                                    '\n- Visual Deformity'
                                    '\n- Immobility of the affected joint',

                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Initial Treatment for a teared part of the body includes:',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n- Doing the RICE treatment or Rest, Ice, Compression and Elevation technique. \n'),
                                              TextSpan(text: '- Drinking some over the counter pain medicines such as Ibuprofen medicines.\n'),
                                              TextSpan(text: '- Partial Tears can be managed by a Physical Theraphy session or with bracings and crutches.\n'),
                                              TextSpan(text: '- But severe injury needs the medical attention and it might need surgery depending how bad it is.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  "- Do not wrap the injured area too tightly. \n"
                                      "- Do not let someone touch the injured area unless it is a professional. \n"
                                      "- Do not try to walk or move the injured area.\n"
                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('TEARS',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class dislocation extends StatefulWidget {
  //const dislocationReal({Key? key}) : super(key: key);
  final Injury injury;
  dislocation({required this.injury});
  @override
  State<dislocation> createState() => _dislocation();
}

class _dislocation extends State<dislocation> {

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          headache(context),
          //migraine(context),
        ],

      ),
    );
  }

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget headache(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The best thing to do when a person got dislocated bone is:"
            "1. Advise the injured person to stay still."
            "2. Place the dislocated joint in the most comfortable position."
            "3. Make sure the joints will not move:"
            "If the injury is on the shoulders or elbows are dislocated, support their injured arm with a sling. Using a broad-fold bandage, put it around the chest and sling for additional support."
            "If the injury is on the hand or arm, remove the ring or watch just in case the hand or arm swells."
            "If the injury is on the ankle, knee, or hip, support the leg with padding and broad-fold bandage."
            "4. If you have an ice pack, cover it with a clothe and place around the injured joint. This can reduce the swelling and controls the internal bleeding on the joint."
            "5. If you have ibuprofen or acetaminophen, use it to reduce the pain from the injury."
            "6. Call for 911 if you can't take the injured person to the nearest hospital."
            "7. Check the circulation on the bandaged area for every 10 minutes. Loosen if necessary");
      }
    }
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1500,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i0.wp.com/coreem.net/content/uploads/2016/09/Shoulder-Dislocation.jpg?fit=1024%2C768&ssl=1'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1500,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It occurs when two connected bones are displaced from the position of the joint. It can be caused by hard impacts when falling, such as in sports injuries, which are common to teens than in children. Urgent medical attention is required to prevent further damage.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'The following procedures are for treating a dislocated part of the body:',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n1. Advise the injured person to stay still.\n'),
                                              TextSpan(text: '2. Place the dislocated joint in the most comfortable positio.n\n'),
                                              TextSpan(text: '3. Make sure the joints will not move:\n'),
                                              TextSpan(text: '- If the injury is on the shoulders or elbows are dislocated, support their injured arm with a sling. Using a broad-fold bandage, put it around the chest and sling for additional support.\n'),
                                              TextSpan(text: '- If the injury is on the hand or arm, remove the ring or watch just in case the hand or arm swells. \n'),
                                              TextSpan(text: '- If the injury is on the ankle, knee, or hip, support the leg with padding and broad-fold bandage.\n'),
                                              TextSpan(text: '4. If you have an ice pack, cover it with a clothe and place around the injured joint. This can reduce the swelling and controls the internal bleeding on the joint.\n'),
                                              TextSpan(text: '5. If you have ibuprofen or acetaminophen, use it to reduce the pain from the injury. \n'),
                                              TextSpan(text: "6. Call for 911 if you can't take the injured person to the nearest hospital.\n"),
                                              TextSpan(text: '7. Check the circulation on the bandaged area for every 10 minutes. Loosen if necessary.\n'),

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  "- Don't attempt to put the dislocated bone back to its original place as this can cause harm and further injury to the person.\n"
                                      "- Don't move the joints and stay it still.\n"
                                      "- Don't try to raise the injured part if it's too painful to the person.\n"
                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('DISLOCATIONS',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class limp extends StatefulWidget {
  //const limpReal({Key? key}) : super(key: key);
  final Injury injury;
  limp({required this.injury});
  @override
  State<limp> createState() => _limp();
}

class _limp extends State<limp> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {

    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          limp(context),
          //migraine(context),
        ],

      ),
    );
  }

  Widget limp(context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("Here are some at-home treatmens for addressing limping:"
            "1. Rest is needed to help alleviate an acute or overuse injury, rest the injured foot or leg for several days."
            "2. Ice. Icing the injury can help reduce swelling in the event of an acute or overuse injury."
            "3. Pain Medication. For a limp that came on suddenly, a pharmacist may recommend over-the-counter pain medications like ibuprofen (Advil, Motrin) or other nonsteroidal anti-inflammatory drugs."
            "If your limping gets worse or continues, see your doctor. Depending on the diagnosis, he or she may prescribe one or more of these treatments.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1190,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/id/1092867398/video/muscle-injury-during-running-training.jpg?s=640x640&k=20&c=qur0mIEfbTrTvUvfEKxX4Dr-rjB25nAuLuE930e5DRc='
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1190,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('A limp is an example of a change in how a person walks. This can be caused by injury or pain, or it may occur as people age. A person with a limp may also have a neurologic disorder, such as brain or spinal cord damage, or peripheral nerve damage. These problems are more common in older people. Heart and lung disease may also lead to a change in how people walk.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Here are some at-home treatmens for addressing limping:',style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                              TextSpan(text: '\n1. Rest is needed to help alleviate an acute or overuse injury, rest the injured foot or leg for several days.\n'),
                                              TextSpan(text: '2. Ice. Icing the injury can help reduce swelling in the event of an acute or overuse injury.\n'),
                                              TextSpan(text: '3. Pain Medication. For a limp that came on suddenly, a pharmacist may recommend over-the-counter pain medications like ibuprofen (Advil, Motrin) or other nonsteroidal anti-inflammatory drugs.\n'),
                                              TextSpan(text: '- If your limping gets worse or continues, see your doctor. Depending on the diagnosis, he or she may prescribe one or more of these treatments.\n'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text(
                                  "- Don't force certain movements if you are limping.\n"
                                  ,style: TextStyle(
                                    fontSize: 16,
                                    //fontWeight: FontWeight.bold,
                                    height: 1.5
                                ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('LIMPS',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class gunpowder extends StatefulWidget {
  //const gunpowderReal({Key? key}) : super(key: key);
  final Injury injury;
  gunpowder({required this.injury});
  @override
  State<gunpowder> createState() => _gunpowderState();
}

class _gunpowderState extends State<gunpowder> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("Seek medical attention immediately");
      }
    }
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 700,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Black_Powder-1.JPG/1280px-Black_Powder-1.JPG'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 700,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is a mixture of charcoal, sulfur and potassium nitrate or saltpeter. '
                                    'When these three mixtures are mixed, it will burn quickly and it will explode as a propellant such as in guns and fireworks. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: ' Seek medical attention immediately. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Don't hesitate, call ambulance immediately.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('GUNPOWDER',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class detergent extends StatefulWidget {
  //const detergentReal({Key? key}) : super(key: key);
  final Injury injury;
  detergent({required this.injury});

  @override
  State<detergent> createState() => _detergentState();
}

class _detergentState extends State<detergent> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("The best thing to do when a person accidentally swallow detergent is:"
            "Immediately seek medical attention and make the victim throw up only when a medical professional advises you to do it."
            "Keep the detergent and pods to its original container with the lid tightly sealed and store it in a high and secured location so that childrens and pets cannot reach it.");
      }
    }


    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1050,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.rxwiki.com/sites/files/styles/article_2/public/photo/dreamstime_s_107694152.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1050,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is a mixture of surfactants with some properties of cleanser when in thin solution that is used for cleaning or washing processes. '
                                    'There are different kinds of detergents such as anionic detergents, household cleaning detergents, cationic detergents and amphoteric detergents. '
                                    'Symptoms includes diarrhea and vomiting when laundry detergent or granular/liquid dishwasher. '
                                    'While vomiting and drowsiness to aspiration and respiratory distress when a person ingested a detergent pod. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: ' Immediately seek medical attention ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'and make the victim throw up only when a medical proffesional advises you to do it. \n\n2. Keep the detergent and pods to its original container with the lid'),
                                              TextSpan(text: ' tightly sealed and store it in a high and secured location ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'so that childrens and pets cannot reach it. '),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. Do not make the person throw up when a medical professional advises you to. '
                                  ,style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('DETERGENT',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class bleach extends StatefulWidget {
  //const bleachReal({Key? key}) : super(key: key);
  final Injury injury;
  bleach({required this.injury});
  @override
  State<bleach> createState() => _bleachState();
}

class _bleachState extends State<bleach> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("Always seek immediate help from doctors if you think you or someone you know has bleach poisoning."
            "1. Call an ambulance right away."
            "2. Describe the substance, when and how much you consumed, and any effects it had on you."
            "3. Please provide any information you can about the person whose care you are involved with - any known medical problems that may cause complications, such as existing heart or breathing defects."
            "4. Keep the bleach bottle next to you so that when the medics arrive, you can hand it to them. That will help them give the patient the best treatment."
            "5. Just stay in touch with the medics and follow any instructions they give you."
            "6. If you see someone has had an accident that involves a toxic chemical, do stay calm and help the person as best you can. Remove any clothes with bleach on them, and rinse any skin that's come in contact with the chemical as it could cause burns.");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1700,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.images.express.co.uk/img/dynamic/11/590x/Bleach-toxicity-Symptoms-to-spot-1573434.webp?r=1646088027207'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1700,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Bleach is a chemical used to whiten or remove the natural colour of fabric, yarn, textiles and paper. '
                                    'In textile finishing, bleach is the most common process for producing white cloth, but it can also be used to prepare fabrics for other finishes or to remove discoloration in other processes.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Always seek immediate help from doctors if you think you or someone you know has bleach poisoning. \n\n1.',),
                                              TextSpan(text: ' Call an ambulance ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'right away. \n\n2. '),
                                              TextSpan(text: 'Describe the substance',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ', when and how much you '),
                                              TextSpan(text: ' consumed',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ', and any '),
                                              TextSpan(text: 'effects ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'it had on you. \n\n3.'),
                                              TextSpan(text: ' Please provide any information ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'you can about the person whose care you are involved with - any known '),
                                              TextSpan(text: 'medical problems ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'that may '),
                                              TextSpan(text: 'cause complications',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ', such as '),
                                              TextSpan(text: 'existing heart or breathing defects. \n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4.'),
                                              TextSpan(text: ' Keep the bleach bottle next to you ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'so that when the medics arrive, you can hand it to them. That will help them give the patient the best treatment. \n\n5. '),
                                              TextSpan(text: 'Just stay in touch with the medics and '),
                                              TextSpan(text: 'follow any instructions ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'they give you. \n\n6. '),
                                              TextSpan(text: 'If you see someone has had an accident that involves a toxic chemical, '),
                                              TextSpan(text: 'do stay calm and help the person as best you can',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '. '),
                                              TextSpan(text: 'Remove any clothes with bleach on them',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ', and '),
                                              TextSpan(text: 'rinse any skin thats come in contact with the chemical as it could cause burns. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Please refrain from forcing yourself to vomit, as it is more harmful than helpful. '
                                    'Problems arise when people try to force vomiting, which can result in aspiration. \n\n'
                                    'Aspiration is the inhalation of either secretions from the back of your throat and nasal cavity or stomach contents into the lower airways of your lungs. '
                                    'This could lead to an acute, chemical lung injury resulting from the inhalation of the contents.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('BLEACH',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class soapshampoo extends StatefulWidget {
  //const soapshampooReal({Key? key}) : super(key: key);
  final Injury injury;
  soapshampoo({required this.injury});
  @override
  State<soapshampoo> createState() => _soapshampooState();
}

class _soapshampooState extends State<soapshampoo> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If you know how much or what kind of exposure you’ve had to soap products, tell the medical team."
            "If a person accidentally swallows soap, rush them to the nearest hospital");
      }
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1155,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://missouripoisoncenter.org/wp-content/uploads/2019/01/bigstock-Foaming-Hand-Soap-For-Washing-5593055.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1155,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Soap is a substance that uses chemicals to dissolve in water, forming a lather and is used as a cleansing agent. '
                                    'Soap is produced by mixing fats or oils with alkaline materials, usually by boiling, and consists of compounds of sodium, potassium, etc., with fatty acids (e.g., oleic, stearic, palmitic). '
                                    'Shampoo is soap in liquid form, with some exceptions of solid waterless shampoos. Shampoo was developed to replace soap for hair and scalp cleansing by removing sebum, dandruff, environmental dust, and residues of hair care products.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. If you know how much or what kind of exposure you’ve had to soap products, ',),
                                              TextSpan(text: 'tell the medical team right away.\n\n2. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If a person accidentally swallows soap, '),
                                              TextSpan(text: 'rush them to the nearest hospital. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('1. You should not make a person vomit unless poison control or a health care provider tells you to. \n\n2. '
                                    'Do not give anything to drink if they are vomiting, having seizures, or are unresponsive.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.9,
                  child: Container(
                      height: 35,
                      width: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SOAP / SHAMPOO',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class rubbingalcohol extends StatefulWidget {
  //const rubbingalcoholReal({Key? key}) : super(key: key);
  final Injury injury;
  rubbingalcohol({required this.injury});

  @override
  State<rubbingalcohol> createState() => _rubbingalcoholState();
}

class _rubbingalcoholState extends State<rubbingalcohol> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("You must be rushed to the hospital and tests and treatments may be done to help diagnose your condition.");
      }
    }


    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 755,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://imageio.forbes.com/specials-images/imageserve/5f2b39da7aaafbc1653ebf61/0x0.jpg?format=jpg&width=1200'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 755,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('A variety of liquid concoctions primarily composed of denatured ethyl alcohol or isopropyl alcohol that are used to wash, chill, or soothe the skin.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'You must be rushed to the hospital.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Tests and treatments may be done to help diagnose your condition.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('WHAT NOT TO DO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('Never induce vomiting. This can cause more damage to your esophagus.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      height: 1.5
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.9,
                  child: Container(
                      height: 35,
                      width:200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('RUBBING ALCOHOL',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class cpr extends StatefulWidget {
  //const cprReal({Key? key}) : super(key: key);
  final Injury injury;
  cpr({required this.injury});
  
  @override
  State<cpr> createState() => _cprState();
}

class _cprState extends State<cpr> {

  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  @override
  Widget build(BuildContext context) {


    final controller = PageController(initialPage: 0);

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              controller.animateToPage(
                  0,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut);
            },
            icon: Icon(Icons.keyboard_arrow_left_rounded, color: Colors.black,),
          ),
          IconButton(
              onPressed: () {
                controller.animateToPage(
                    1,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              icon: Icon(
                Icons.keyboard_arrow_right_rounded, color: Colors.black,))

        ],
      ),

      body: PageView(
        controller: controller,
        children: [
          cpr1(context),
          cpr2(context),
        ],

      ),
    );
  }

  Widget cpr1(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("If you suspect anyone who needs to have CPR, do the following steps below:"
            '1. Try to wake up the person using a loud voice asking "are you okay?". If the person did not respond after five seconds, continue doing the next step'
            '2. Call 911 immediately.'
            '3. Lay down the person on the ground facing you.'
            '4. Check for breathing. If the person is not breathing, proceed doing CPR as soon as possible.'
            'CPR for children:'
            '1. Place your two hands on the sternum. Using of one hand is advisable if the child is very small.'
            '2. Perform chest compressions by pushing your hands on the chest of the person. It has to have a depth of at '
            'least 2 inches, but no deeper than 2.4 inches, and push for about twice per second until the person responds.'
            '3. Deliver two rescue breaths after pushing the chest for 30 times if you feel comfortable doing the instructions.'
            '4. Repeat doing 30 chest compressions and two rescue breaths until help arrives or the person becomes conscious again.'
            'CPR for infants:'
            '1. Place the two fingers of your one hand on the center of the chest.'
            '2. Perform chest compressions by pushing your fingers on the chest of the person. It has to have a depth of about 1.5 inches, '
            'and push for about twice per second until the person responds.'
            '3. Deliver two rescue breaths after pushing the chest for 30 times if you feel comfortable doing the instructions.'
            'CPR for Adults:'
            '1. Put the heel of your one hand on the line between the nipples. The other hand should be placed on top of your hand placed on the center of the chest.'
            '2. Perform chest compressions by pushing your hands on the chest of the person. It has to have a depth of at least 2 inches, '
            'but no deeper than 2.4 inches, and push for about twice per second until the person responds.'
            '3. Deliver two rescue breaths after pushing the chest for 30 times if you feel comfortable doing the instructions.'
            '4. Repeat doing 30 chest compressions and two rescue breaths until help arrives or the person becomes conscious again.');
      }
    }
    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2280,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.news-medical.net/image.axd?picture=2018%2F4%2Fshutterstock_By_spkphotostock.jpg'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2280,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'Cardiopulmonary resuscitation or also called as CPR is a hands-on emergency procedure that involves chest '
                                      'compressions and rescue breathing to restore the breathing or heartbeat of a person from a cardiac arrest.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('HOW TO DO CPR:', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'If you suspect anyone who needs to have CPR, do the following steps below: \n\n1.',),
                                              TextSpan(
                                                  text: '  Try to wake up the person using a loud voice asking "are you okay?".  ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'If the person did not respond after five seconds, continue doing the next step. \n\n2.'),
                                              TextSpan(
                                                  text: ' Call 911 immediately ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n3.'),
                                              TextSpan(
                                                  text: ' Lay down the person on the ground facing you.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n4. Check for breathing.'),
                                              TextSpan(
                                                  text: ' If the person is not breathing, proceed doing CPR as soon as possible'
                                                      '\n\nCPR for Infants: ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n1. Place the two fingers of your one hand on the center of the chest.'
                                                      '\n\n2. Perform chest compressions by pushing your fingers on the chest of the person. It has to have a depth of about 1.5 inches, and push for about twice per second until the person responds'
                                                      '\n\n3. Deliver two rescue breaths after pushing the chest for 30 times if you feel comfortable doing the instructions. '),
                                              TextSpan(
                                                  text: '\n\nCPR for Children: ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n1. Place your two hands on the sternum. Using of one hand is advisable if the child is very small.'
                                                      '\n\n2. Perform chest compressions by pushing your hands on the chest of the person. It has to have a depth of at least 2 inches, but no deeper than 2.4 inches, and push for about twice per second until the person responds.'
                                                      '\n\n3. Deliver two rescue breaths after pushing the chest for 30 times if you feel comfortable doing the instructions.'
                                                      '\n\n4. Repeat doing 30 chest compressions and two rescue breaths until help arrives or the person becomes conscious again.'),
                                              TextSpan(
                                                  text: '\n\nCPR for Adult: ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n1. Put the heel of your one hand on the line between the nipples. The other hand should be placed on top of your hand placed on the center of the chest.  '
                                                      '\n\n2. Perform chest compressions by pushing your hands on the chest of the person. It has to have a depth of at least 2 inches, but no deeper than 2.4 inches, and push for about twice per second until the person responds.'
                                                      '\n\n3. Deliver two rescue breaths after pushing the chest for 30 times if you feel comfortable doing the instructions.'
                                                      '\n\n4. Repeat doing 30 chest compressions and two rescue breaths until help arrives or the person becomes conscious again.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('CPR', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

  Widget cpr2(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("To make a homemade CPR doll, you need 1. Plastic bottle (2 liters). 2. Any sizes and kinds of t-shirt, "
            "3. Crumbled paper or any that can stop the plastic bottle to roll."
            "after you collect all of the materials needed, the steps to make are:"
            "1. tie the three holes of the t-shirt (left sleeves, right sleeces, and bottom hole."
            "2. put the plastic bottle in the middle of the t-shirt where the rib is located."
            "3. put the crumbled papers beside the plastic bottle to avoid the plastic bottle to roll when you are start doing CPR."
            "after you accomplished this task, you may now proceed to do the CPR for children and CPR for adults.");
      }
    }
    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 950,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.emssafetyservices.com/wp-content/uploads/2019/07/PP-AM-400M-EMS-DS.jpg'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 950,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('HOW TO MAKE HOMEMADE CPR DOLL', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 30,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'MATERIALS',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\n1. Plastic bottle (2 Liters)'),
                                              TextSpan(text: ' required',style: TextStyle(
                                                  fontStyle: FontStyle.italic,
                                                  color: Colors.red
                                              )),
                                              TextSpan(text: '\n\n2. Any sizes and kinds of t-shirt\n\n3. Crumbled paper or any that can stop the plastic bottle to roll.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'STEPS',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' \n\n1.'),
                                              TextSpan(text: ' Tie the three (3) holes',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' of the t-shirt (Left sleeves, Right sleeves, Bottom hole.)\n\n2.'),
                                              TextSpan(text: ' Put the plastic bottle in the middle of the tshirt',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' where the rib is located.\n\n3.'),
                                              TextSpan(text: ' Put the crumbled papers beside the plastic bottle',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' to avoid the plastic bottle to roll when you start doing CPR.'),
                                              TextSpan(text:"  \n\nAfter you accomplished this task, you may now proceed to do the CPR for children and CPR for Adults.",style: TextStyle(
                                                fontStyle: FontStyle.italic,

                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('CPR DOLL', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}

class heimlich extends StatefulWidget {
  //const heimlichReal({Key? key}) : super(key: key);
  final Injury injury;
  heimlich({required this.injury});

  @override
  State<heimlich> createState() => _heimlichState();
}

class _heimlichState extends State<heimlich> {


  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose() {
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [


        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          heimlich1(context),

        ],

      ),
    );
  }
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;

  Widget heimlich1(context) {
    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("To perform heimlich maneuver on someone else, perform the following :"
            "Place yourself behind the person. To maintain balance, place one foot slightly ahead of the other."
            "Arms should be wrapped around the waist. Slightly lean the person forward. Kneel down behind the child if he or she is choking."
            "Make a fist with one hand and place it a few inches above the person's navel."
            "With the other hand, grasp the fist and press hard into the abdomen with a quick, upward thrust — as if trying to lift the person up."
            "Perform six to ten abdominal thrusts until the blockage is released."
            "To do the Heimlich maneuver on yourself, follow these steps:"
            "Make a fist and place it a few inches over your navel."
            "Bend over a hard surface, such as a countertop or a • chair, and grasp your fist with the opposite hand."
            "Shove your fist inward and upward.");
      }
    }
    double width = MediaQuery
        .of(context)
        .size
        .width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1400,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://assets3.thrillist.com/v1/image/1691914/1200x600/scale;'
                          )
                          , fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1400,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width: width,
                                child: Text('DESCRIPTION', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                width: width,
                                child: Text(
                                  'It is also called as "abdominal thrusts" since it involves thrusting into the abdomen area. It is a choking first aid technique, an emergency approach to assist someone who is choking due to food caught in the trachea. '
                                      'It is safe to use on adults and children, however it is not suggested for infants.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(
                                color: primaryColor, endIndent: 5, indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width: width,
                                child: Text('HOW TO DO HEIMLICH MANEUVER:', style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10, bottom: 30),
                                child: Column(
                                  children: <Widget>[

                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'To perform heimlich maneuver on someone else, perform the following: \n\n1.',),
                                              TextSpan(
                                                  text: '  Place yourself behind the person.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: ' To maintain balance,'),
                                              TextSpan(
                                                  text: ' place one foot slightly ahead of the other.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n2.'),
                                              TextSpan(
                                                  text: ' Arms should be wrapped around the waist. Slightly lean the person forward.',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: 'Kneel down behind the person if he or she is choking. \n\n3.'),
                                              TextSpan(
                                                  text: " Make a fist with one hand and place it a few inches above the person's navel.",
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n4. With the other hand,'),
                                              TextSpan(
                                                  text: ' grasp the fist and press hard into the abdomen with a quick, upward thrust',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: ' — as if trying to lift the person up. \n\n5.'),
                                              TextSpan(
                                                  text: ' Perform six to ten abdominal thrusts until the blockage is released. '
                                                      '\n\nTo do the Heimlich maneuver on yourself, follow these steps: ',
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .bold
                                                  )),
                                              TextSpan(
                                                  text: '\n\n1. Make a fist and place it a few inches over your navel.  '
                                                      '\n\n2. Bend over a hard surface, such as a countertop or a chair, and grasp your fist with the opposite hand.'
                                                      '\n\n3. Shove your fist inward and upward.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 4.2,
                  child: Container(
                      height: 35,
                      width: 240,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('HEIMLICH MANEUVER', style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}

class ricemethod extends StatefulWidget {
  //const ricemethodReal({Key? key}) : super(key: key);
  final Injury injury;
  ricemethod({required this.injury});
  @override
  State<ricemethod> createState() => _ricemethodState();
}

class _ricemethodState extends State<ricemethod> {
  final FlutterTts flutterTts = FlutterTts();
  bool isPlaying = false;
  bool click = true;
  @override
  Widget build(BuildContext context) {

    Future _speak() async {
      await flutterTts.setLanguage("en-US");
      if(isPlaying == false){
        await flutterTts.stop();
      }else{
        await flutterTts.speak("To perform the RICE method, follow the steps below:"
            "Rest: Refrain yourself from doing any activity as soon as you get hurt to prevent worsening of the injury and delaying of recovery. For first 2 days, rest as much as possible before seeing a doctor, or until you can use the injured part without feeling any pain."
            "Ice: To reduce the swelling and pain, apply an ice pack, wrapped in a towel or cloth, on the injured part for about 10-20 minutes every 4 hours."
            "Compression: Wrap the injured part using an elastic wrap bandage. If the skin becomes blue or feels cold, or when numbing and tingly sensation occurs, loosen the bandage. Seek for immediate help if these symptoms don't disappear."
            "Elevation: Elevate the injured part above the level of your heart using a pillow or any object that is 6-10 inches higher. By doing so, this can help the circulation of the blood.");
      }
    }
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            setState((){
              isPlaying = !isPlaying;
              click = !click;
            });
            _speak();
          },
          backgroundColor: primaryColor,
          child: Icon((click == false) ? Icons.stop_rounded  :  Icons.play_arrow_rounded)
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1200,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://i.redd.it/lcoa07bydjz91.png'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1200,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('RICE is an acronym for a type of first aid which stands for Rest, Ice, Compression, and Elevation. '
                                    'This treatment is usually recommended by doctors for treating a person with an injured muscle, tendon, or ligament which are also called as soft tissue injuries. ',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HOW TO DO RICE METHOD:',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'To perform the RICE method, follow the steps below:\n\n',),
                                              TextSpan(text: 'Rest: ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Refrain yourself from doing any activity as soon as you get hurt to prevent worsening of the injury and delaying of recovery. ',),
                                              TextSpan(text: 'For first 2 days, rest as much as possible before seeing a doctor, or until you can use the injured part without feeling any pain.\n\n',),
                                              TextSpan(text: 'Ice: ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'To reduce the swelling and pain, apply an ice pack, wrapped in a towel or cloth, on the injured part for about 10-20 minutes every 4 hours.\n\n',),
                                              TextSpan(text: 'Compression: ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Wrap the injured part using an elastic wrap bandage. If the skin becomes blue or feels cold, or when numbing and tingly sensation occurs, loosen the bandage. Seek for immediate help if these symptoms don't disappear. \n\n",),
                                              TextSpan(text: 'Elevation: ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Elevate the injured part above the level of your heart using a pillow or any object that is 6-10 inches higher. By doing so, this can help the circulation of the blood. ',),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('RICE METHOD',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class typhoon extends StatefulWidget {
  //const typhoonReal({Key? key}) : super(key: key);
  final Injury injury;
  typhoon({required this.injury});
  @override
  State<typhoon> createState() => _typhoonState();
}

class _typhoonState extends State<typhoon> {


  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              controller.animateToPage(
                  0,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut);

            },
            icon: Icon(Icons.keyboard_arrow_left_rounded,color: Colors.black,),
          ),
          IconButton(
              onPressed: () {
                controller.animateToPage(
                    1,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              icon: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.black,))

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          typhoon(context),
          signal1(context),
          signal2(context),
          signal3(context),
          signal4(context),
          signal5(context)
        ],
      ),
    );
  }

  Widget typhoon(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 6930,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.kxnet.com/wp-content/uploads/sites/16/2020/10/a207a8f2386d47ce88b8bb450b0c0086.jpg?w=876&h=493&crop=1'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 6930,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("It's also referred to as a tropical cyclone or a hurricane. It's a powerful circular cyclone with low air pressure, strong winds, and heavy rain that forms over warm tropical oceans. "
                                    "These are enormous storms that form over warm, tropical ocean water. \n\nThe winds pick up moisture and carry it above, while colder air rushes in below. "
                                    "This builds pressure, causing the winds to pick up speed. The winds revolve around a central point known as an eye. It can strike at any time of year, but it commonly happens between June and November.\n\n"
                                    "The following is PAGASA's classification of tropical cyclones based on the strengtSh of the related winds:",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Tropical Depression (TD):',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'A tropical cyclone with sustained maximum winds of up to 62 kilometers per hour (kph) or less than 34 nautical miles per hour (knots)'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Tropical Storm (TS):',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'A tropical storm with maximum wind speeds ranging from 62 to 88 kph (34 to 47 knots).'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Severe Tropical Storm (STS):',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'A tropical cyclone with maximum wind speeds of 87 to 117 kph (48 - 63 knots).'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Typhoon (TY):',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'A tropical cyclone having maximum wind speeds of 118 to 184 kph (64 to 99 knots).'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Super Typhoon (STY):',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'A tropical cyclone having a maximum wind speed of over 185 kph (over 100 knots).'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('BEFORE A TYPHOON',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: "Keep an eye on weather reports and don't dismiss text messages with rain warnings.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: "Know the evacuation routes not only from your home but also from your workplace, ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "your children's schools, and other places you usually visit, and print out maps because you won't be able to rely on Google in an emergency.\n\n"),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Make sure that you have enough '),
                                              TextSpan(text: 'food and water to last at least three days.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Charge your electronics, such as cellphones, rechargeable lamps, and flashlights, and stock up on extra batteries for a battery-operated radio.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Check your home for any issues that need to be addressed, ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'such as a leaky roof or overgrown trees that need to be pruned.\n\n'),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'If you reside in a low-lying neighborhood and own a car, '),
                                              TextSpan(text: 'make sure you park it somewhere higher, ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'such as a mall parking lot.\n\n'),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: "Secure your pets. Bring your pets to the approved animal evacuation area. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "If there aren't any, "),
                                              TextSpan(text: "put them in a safe area and remove their collars ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'so that if you have to leave them, they can save themselves in the event of a flood.\n\n'),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: 'If your local government unit issues an order, or if you live near a body of water or mountainsides, '),
                                              TextSpan(text: "evacuate immediately and calmly to avoid flash floods and landslides. Close all of your windows and turn off the main power.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '9. '),
                                              TextSpan(text: "Make arrangements to communicate with your family during a typhoon. Have a system in place to contact them if you become separated. \n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '10. '),
                                              TextSpan(text: "Make your own survival kit with all of the necessities, such as food, money, important documents, and toiletries, as well as first-aid supplies, candles, flashlights, life vests, and a battery-operated radio, to last for two to three days. Keep your survival kit somewhere you can get to it quickly in case of an emergency. \n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '11. '),
                                              TextSpan(text: "Prepare a list of emergency hotlines to call: \n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'National Emergency Hotline: 911 \n'),
                                              TextSpan(text: 'NDRRMC: (02) 911-5061 to 65 \n'),
                                              TextSpan(text: 'Red Cross: 143 / (02) 790-2300 \n'),
                                              TextSpan(text: 'MMDA: 136 / (02) 882-4151 to 77 \n'),
                                              TextSpan(text: 'PNP: 117 / (02) 723-0401'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('DURING A TYPHOON',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'If no evacuation order has been issued, ',),
                                              TextSpan(text: "you should remain inside your home. Maintain your composure and postpone any planned travels.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: "Keep your eyes and ears open for anything unusual. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Anything can happen in a split second. Listen to the news on the radio or television to stay up to date on the newest events.\n\n'),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Keep a safe distance from potential hazards such as glass windows.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'In case of an emergency or power outage, '),
                                              TextSpan(text: 'keep a flashlight or lamp nearby.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Do not go outside unless you are evacuating or an emergency situation has occurred. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If you absolutely must leave your home, '),
                                              TextSpan(text: 'stay away from places where flooding or landslides are a possibility. Keep an eye out for flying items and debris.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Turn off all of your appliances and secure your home. Also, turn off your LPG tanks to avoid any more accidents.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: "Keep a safe distance from downed power lines. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Electric facilities such as power switchboards and power cables that were exposed to water, can result in not only a power outage but also the risk of electric shock.\n\n'),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: "Keep your phone's batteries charged for emergency calls.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '9. '),
                                              TextSpan(text: 'If you notice symptoms of water rising, '),
                                              TextSpan(text: "you should turn off the primary power sources. Keep your electric-powered items in higher places and avoid using them during a flood.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '10. '),
                                              TextSpan(text: 'To avoid contracting water-borne infections, '),
                                              TextSpan(text: "avoid wading through flooded areas. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If it is unavoidable, '),
                                              TextSpan(text: "dress in protective clothing such as raincoats and boots.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '11. '),
                                              TextSpan(text: "Keep kids from playing in the rain or swimming in a flooded area ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to prevent them from picking up diseases like leptospirosis.\n\n'),
                                              TextSpan(text: '12. '),
                                              TextSpan(text: 'If you run out of potable water, '),
                                              TextSpan(text: "boil the remaining water for 3 to 20 minutes to make it safe to drink.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "In the following instances, you should immediately evacuate your home or location:\n\n",style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '- If the local authorities have encouraged you to evacuate and have even organized a rescue squad to assist you.\n\n'),
                                              TextSpan(text: "- If your home's structure is weak, such as composed of light materials and easily blown away by the wind, you might consider moving.\n\n"),
                                              TextSpan(text: '- If the local authorities have encouraged you to evacuate and have even organized a rescue squad to assist you.\n\n'),
                                              TextSpan(text: '- If the local authorities have encouraged you to evacuate and have even organized a rescue squad to assist you.\n\n'),
                                              TextSpan(text: "If you are unable to evacuate, follow these instructions:\n\n",style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '-  Wait until the storm has passed before going outside or near a window.\n\n'),
                                              TextSpan(text: "- Keep your windows shut at all times — the winds may die down temporarily, but this could be due to the storm's eye passing through your area.\n\n"),
                                              TextSpan(text: '- Stay away from the upper levels of your home.\n\n'),
                                              TextSpan(text: '- Lie down under a solid item, such as a hard table.\n\n'),
                                              TextSpan(text: '- Avoid using the elevators at all cost.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('AFTER A TYPHOON',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: "If you're staying in a shelter, ",),
                                              TextSpan(text: "check first with your local officials to see if it's safe to return home.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: "If you've become separated from your family, "),
                                              TextSpan(text: "make sure to keep track of your meeting plans and arrive at the specified location.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Continue to listen to the newest news on the radio and television. Make sure your radio has enough batteries if there is no electricity. Keep an eye out for rain and flooding ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'since it may continue even after the storm has passed.\n\n'),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Use flashlights instead of candles in these situations ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'since candles can quickly start a fire.\n\n'),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: "Keep an eye out for live wires or any electrical outlets that may have become wet. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "If you don't have enough experience with electrical wiring, "),
                                              TextSpan(text: "have a professional to evaluate these cables ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'as well as your appliances before using them again.\n\n'),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Inspect your home to determine whether any damage has occurred. Keep an eye out for broken gas pipes or exposed power wires; if you spot either, immediately stay away from them and contact the firms that are responsible for their maintenance.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: " Put on protection gear such as boots ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "since water-borne infections like Leptospirosis spread not only during a typhoon, but even thereafter. The germs that cause this disease may still be present in "),
                                              TextSpan(text: "damp soils or dispersed debris, ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "and if they come into touch with an open wound, you're likely to get sick.\n\n"),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: "Keep an eye on your surroundings. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Snakes and other potentially deadly animals may appear in your backyard, causing some surprise guests.\n\n'),
                                              TextSpan(text: '9. '),
                                              TextSpan(text: "Check your stored food and only cook with water that you have stored ahead, as tap water may be polluted. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If your stored water is insufficient, '),
                                              TextSpan(text: "boil it for 2-3 minutes before drinking it ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'because it may be contaminated.\n\n'),
                                              TextSpan(text: '10. '),
                                              TextSpan(text: 'If you have a generator, '),
                                              TextSpan(text: "don't use it yet ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'since electricity and floods can be harmful.\n\n'),
                                              TextSpan(text: '11. '),
                                              TextSpan(text: 'If the gadget is still plugged in, '),
                                              TextSpan(text: "turn off the power at the breaker panel in your home. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Before using any electronics, '),
                                              TextSpan(text: "have it checked by an electrician.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '12. '),
                                              TextSpan(text: "Do some cleaning. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Dispose of anything that could serve as a '),
                                              TextSpan(text: "breeding place for mosquitos. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Tires, cans, and pots are examples of such items.\n\n'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('TYPHOON',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget signal1(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 820,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.kxnet.com/wp-content/uploads/sites/16/2020/10/a207a8f2386d47ce88b8bb450b0c0086.jpg?w=876&h=493&crop=1'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 820,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('WIND THREAT',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("39-61 km/h (22-33 kt, 10.8-17.1 m/s)",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('WARNING LEAD TIME',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("36 hours",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('POTENTIAL IMPACTS',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("- House of poor construction (e.g., wood frame, bamboo, makeshift), old dilapidated structures, and other structures made of light materials will suffer minimal to minor damage. "
                                    "\n\n- Some banana and similar plants are tilted, while twigs of small trees may sway with the wind. Rice crops, especially those in flowering and ripening stages, may suffer some damage. "
                                    "\n\n- Minimal disruption to public transportation.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  //textAlign: TextAlign.justify,
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SIGNAL #1',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget signal2(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1060,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.kxnet.com/wp-content/uploads/sites/16/2020/10/a207a8f2386d47ce88b8bb450b0c0086.jpg?w=876&h=493&crop=1'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1060,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('WIND THREAT',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("62-88 km/h (34-47 kt, 17.2-24.4 m/s)",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('WARNING LEAD TIME',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("24 hours",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('POTENTIAL IMPACTS',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("- Minor to moderate damage may occur to makeshift or old dilapidated structures, and other structures made of light materials. Houses of poor and average construction (e.g., unreinforced CHB/masonry, mixed timber-CHB) may receive minor roof damage. "
                                    "\n\n- Unsecures, exposed lightweight items may become projectiles which may cause additional damage. "
                                    "\n\n- Some electrical wires may be blown down, resulting in local power outages. "
                                    "\n\n- Minor to moderate disruption to public transportation. "
                                    "\n\n- Most banana and similar plants are tilted, with some stooped or downed. Some small trees blow over, with twigs and branches of frail trees broken. Considerable damage is likely to rice and other similar crops, especially those in flowering and ripening stages.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  //textAlign: TextAlign.justify,
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SIGNAL #2',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget signal3(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1225,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.kxnet.com/wp-content/uploads/sites/16/2020/10/a207a8f2386d47ce88b8bb450b0c0086.jpg?w=876&h=493&crop=1'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1225,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('WIND THREAT',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("89-117 km/h (48-63 kt, 24.5-32.6 m/s)",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('WARNING LEAD TIME',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("18 hours",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('POTENTIAL IMPACTS',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("- Makeshift or old, dilapidated structures, and other structures made of light materials may suffer substantial damage. Houses of poor or average construction will have considerate roof damage, some blown-out windows, and/or partial wall damage. Well-constructed houses (e.g., reinforced/pre-cast CHB, reinforced concrete moment frame) may suffer minimal to minor roof damage. "
                                    "\n\n- Warehouses and other buildings in industrial parks may suffer minor to moderate damage. "
                                    "\n\n- Unsecured, exposed outdoor items of light to moderate weight may become projectiles, causing additional damage or injuries. "
                                    "\n\n- Many areas may suffer power outages with numerous downed power lines ans posts. Minimal to minor disruption in telecommunications and potable water suppy. "
                                    "\n\n- Moderate to significant disruption to public transportation "
                                    "\n\n- Some small trees. most banana and similar plants, and a few large trees are downed or broken. Rice and other similar crops, especially those in flowering and ripening stages may suffer heavy damage.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  //textAlign: TextAlign.justify,
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SIGNAL #3',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget signal4(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1470,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.kxnet.com/wp-content/uploads/sites/16/2020/10/a207a8f2386d47ce88b8bb450b0c0086.jpg?w=876&h=493&crop=1'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1470,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('WIND THREAT',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("118-184 km/h (64-99 kt, 32.7-51.2 m/s)",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('WARNING LEAD TIME',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("12 hours",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('POTENTIAL IMPACTS',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("- Severe damage will occur to makeshift or old, dilapidated of light structures, and other structures made of light materials. Houses of poor or average construction may receive major damage, including complete roof failure and possible wall collapse; a few may suffer severe damage. "
                                    "\n\n- Most well-constructed houses may sufer minor to moderate roof damage, with some houses experiencing major roof failure; blown out windows are also likely. "
                                    "\n\n- Failure of aluminum and steel roofs and ceverings may occure in buildings at industrial parks. "
                                    "\n\n- Some glass in most high-rise office buildings may be blown out; a few of these buildings may have minor to moderate damage and higher proportion of blown-out windows due to swaying. "
                                    "\n\n- Considerable airborne debris willbe generated and may cause damage, injury, and possible fatalities. "
                                    "\n\n- Near total loss of power supply and telecommunications due to numerous downed power lines, poles, and cellular towers. Diminished availability of potable water supply is also likely. "
                                    "\n\n- Significant to severe disruption to public transportation. "
                                    "\n\n- Significant damage to banana and similar plants. Most small tress and some large trees will be broken, defoliated, or uprooted. Almost total damage to rice and other crops..",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  //textAlign: TextAlign.justify,
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SIGNAL #4',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget signal5(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1275,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.kxnet.com/wp-content/uploads/sites/16/2020/10/a207a8f2386d47ce88b8bb450b0c0086.jpg?w=876&h=493&crop=1'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1275,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('WIND THREAT',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("185 km/h or higher (100 kt or higher, 51.3 m/s or higher)",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('WARNING LEAD TIME',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("12 hours",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('POTENTIAL IMPACTS',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("- Severe to catasrophic damage is expected to houses of poor or average construction, makeshift or old, dilapidated structures, and other structures made of light materials. Well-constructed houses may suffer substatial roof and wall failure or damage. "
                                    "\n\n- Many industrial buildings will be destroyed, with only few receiving partial roof and wall damage. "
                                    "\n\n- Most windows will be blowdn out n high-rise office buildings; Moderate structural damage is possible due to swaying. "
                                    "\n\n- Extensive damage will be cause by airborne debris. People, pets, and livestock exposed to the wind are at great risk of injury or death. "
                                    "\n\n- Electricity, potable water supply, and telecommunications will be unavailable for prolonged periods due to significant disruption in infrastructure. "
                                    "\n\n- Prolonged significant to severe disruption to pucblic transportation. "
                                    "\n\n- Vast majority of the trees will be broken, defoliated, or unrooted. Banana and similar plants will be extensively damaged. Few strees, plants, and crops will survive.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  //textAlign: TextAlign.justify,
                                ),
                              ),


                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('SIGNAL #5',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}

class earthquake extends StatefulWidget {
  //const earthquakeReal({Key? key}) : super(key: key);
  final Injury injury;
  earthquake({required this.injury});

  @override
  State<earthquake> createState() => _earthquakeState();
}

class _earthquakeState extends State<earthquake> {


  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [


        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          earthquake(context),
          //sample(context),
        ],
      ),
    );
  }

  Widget earthquake(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 4260,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://ichef.bbci.co.uk/news/976/mcs/media/images/70493000/jpg/_70493829_019650792-1.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 4260,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Earthquakes are caused by a sudden shaking of the ground that can be either caused by a volcanic/magmatic activity or by the passage of seismic waves through the Earth's rocks.\n\n"
                                    "Earthquakes often occur on the geologic faults as masses of rocks move in relation to one another.Earthquakes often occur on the geologic faults as masses of rocks move in relation to one another.\n\n"
                                    "There are four different types of earthquakes:",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Tectonic Earthquake',style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 15,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Is a result of physical and chemical changes of geological forces on rocks and adjoining plates.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Volcanic Earthquake',style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 15,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Is a result of a volcanic activity which forms tectonic forces.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Collapse Earthquake',style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 15,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Is a small earthquake caused by explosions of rock on the surface that produces seismic waves in underground caverns and mines.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Explosion Earthquake',style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 15,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Is a result of detonation of nuclear and chemical devices.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('BEFORE AN EARTHQUAKE:',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'Create your own customised emergency preparation kit. Your preparation kit should atleast have ',),
                                              TextSpan(text: "flashlights, first aid kits, whistle, extra batteries, battery-powered radio, canned foods, water, wrench or pliers, duct tape, non-medical masks, local maps, and other items to be used for hygiene and personal sanitations such as hand sanitizers. \n\n",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                              TextSpan(text: "If you already prepared your emergency kit and food supplies, consider checking the supplies to your local public health authorities' guidelines in preparation of leaving your residence.If you already prepared your emergency kit and food supplies, consider checking the supplies to your local public health authorities' guidelines in preparation of leaving your residence.\n\n",style: TextStyle(
                                                fontSize: 16, color: Colors.grey[600],
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Practice doing the '),
                                              TextSpan(text: "drop, cover, and hold ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "procedure in the "),
                                              TextSpan(text: "safest locations ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "in each room of your house, business, and/or school. Rehearse your evacuation preparations and know where you'll meet.\n\n"),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Learn how to apply the '),
                                              TextSpan(text: "proper techniques and procedures ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'in first aid.\n\n'),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Contact your municipality ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to learn more about the '),
                                              TextSpan(text: 'earthquake risks in your area ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'and discuss with them what are the '),
                                              TextSpan(text: 'local strategies.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Consult a professional ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to learn more about other '),
                                              TextSpan(text: 'home security measures',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ', such as '),
                                              TextSpan(text: 'structural mitigating strategies.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Large and heavy items, such as water heaters, bookshelves, mirrors, and picture frames should be '),
                                              TextSpan(text: "bolted and braced away from beds, couches, and other places where people sleep or sit.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('DURING AN EARTHQUAKE',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: "Stay calm and be alert. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If the earthquake occur and you are indoors, ',),
                                              TextSpan(text: "stay inside. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If you are outside, ',),
                                              TextSpan(text: "stay outside.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'If you are indoors, look for any wall to '),
                                              TextSpan(text: "lean against or cover yourself ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'beneath heavy furnitures such as desk or table. '),
                                              TextSpan(text: "Apply the duck, cover, and hold procedure.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Lie down or crouch low ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to maintain balance.\n\n'),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Keep your distance on windows and exterior doors. Beware of flying items.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Avoid using elevators when evacuating as they may shut down at any moment.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'If you need to go outside while the earthquake is occuring, '),
                                              TextSpan(text: 'find a wide open space away from buildings, walls, electrical lines, and trees that might collapse.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: 'If you are already outside when the earthquake happened, '),
                                              TextSpan(text: "stay away from structures that might collapse.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: 'If you are driving, '),
                                              TextSpan(text: "find yourself a safe spot to stop with as quickly as possible. Don't stop on overpasses and bridges. Remain inside your car until the shaking have stopped.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '9. '),
                                              TextSpan(text: 'If you need to abandon your vehicle, '),
                                              TextSpan(text: "go to an open place.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "IF NEAR OCEAN BODIES",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\nIn a large ocean wave, earthquakes can trigger a natural disaster called '),
                                              TextSpan(text: "Tsunamis. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If you are nearby a coastline that is considered as'),
                                              TextSpan(text: " high risk area ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'while an earthquake, then immediately go to the nearest inland or get yourself in a higher ground and stay there until the city or overnment officials declare it as a safe area'),
                                              TextSpan(text: "\n\nIF NEAR MOUNTAIN",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '\n\nIf you are near mountain and an earthquake occurs '),
                                              TextSpan(text: "avoid being near bodies of water such as ocean, rivers or streams. Avoid also being near cliffs, rocky formations, trough of a ridge in which water can easily pass through.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: ' It is better to be on a open space and lower altitudes.\n\nContact your rescue officers, local government areas and contact persons and inform them about your location and that you are safe. '),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('AFTER AN EARTHQUAKE',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: "Turn the radio on and listen to emergency broadcasts, announcements, news, and instructions. Cooperate with the public security authorities.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: "Don't use any vehicle if not needed. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Keep the street clean for any emergency vehicles.\n\n'),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'For making a shelter, '),
                                              TextSpan(text: 'set it up away from casualties.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Calm down and help others. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Work with your neighbors for quicker recovery.\n\n'),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: "Prepare for any aftershocks.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Plan for evacuation in case it is needed. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Leave a message for other people to follow.\n\n'),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: "Examine for any injuries.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: "Provide assistance to other victims of the casualty. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If the person is seriously injured, '),
                                              TextSpan(text: "do not move them unless they are in immediate danger. Use your phone to call for help.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '9. '),
                                              TextSpan(text: "Check for any other potential threats such as fire, chemical spills, toxic fumes and possible collapse of infrastructures.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '10. '),
                                              TextSpan(text: 'Examine the utilities used such as water, gas, and electricity. '),
                                              TextSpan(text: "If there is any damage, switch it off.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '11. '),
                                              TextSpan(text: "Check for food and water supplies.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '12. '),
                                              TextSpan(text: "Look for any water heaters, melted ice cubes, canned veggies, and toilet tanks that can be used to provide emergency water.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '13. '),
                                              TextSpan(text: "Check the structures for cracks and deterioration including the roof, chimneys, and foundation.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('EARTHQUAKE',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }

}

class volcaniceruption extends StatefulWidget {
  //const volcaniceruptionReal({Key? key}) : super(key: key);
  final Injury injury;
  volcaniceruption({required this.injury});

  @override
  State<volcaniceruption> createState() => _volcaniceruptionState();
}

class _volcaniceruptionState extends State<volcaniceruption> {


  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {
              controller.animateToPage(
                  0,
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut);

            },
            icon: Icon(Icons.keyboard_arrow_left_rounded,color: Colors.black,),
          ),
          IconButton(
              onPressed: () {
                controller.animateToPage(
                    1,
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut);
              },
              icon: Icon(Icons.keyboard_arrow_right_rounded,color: Colors.black,))

        ],
      ),
      body: PageView(
        controller: controller,
        children: [
          volcano(context),
          bulusan(context),
          hibok(context),
          kanlaon(context),
          mayon(context),
          taal(context),
          pinatubo(context)

        ],
      ),
    );
  }

  Widget volcano(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 4100,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://s.abcnews.com/images/International/philippines-mayon-volcano-eruption-gty-mem-180124_4x3_992.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 4100,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("A volcanic eruption occurs when volcanoes released lava and assorted gases which can travel quickly and reach temperatures of about 1200 degrees Fahrenheit.\n\n"
                                    "There are different types of eruptions:",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Magmatic Eruptions',style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 15,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Are caused by decompression of gases from magma and propels outside the volcano.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Phreatic Eruptions',style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 15,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Are caused by superheating of steam, when associated to magma, that causes granulation of existing rocks.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(),
                                width:width,
                                child: Text('Phreatomagmatic Eruptions',style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 15,color: Colors.grey[600]),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Is caused by the direct opposite of magmatic activity driven by the compression of gases within magma.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('BEFORE A VOLCANIC ERUPTION',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'If you live or within the radius of the affected areas, ',),
                                              TextSpan(text: "evacuate immediately. Ask for the location of the evacuation sites to the local government.\n\n",style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Listen to the announcements on the '),
                                              TextSpan(text: "national news and local community channels ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "to keep things up to date. Get reliable information from trusted sources "),
                                              TextSpan(text: "local radios, TV news, or official news outlets.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Talk with the members of your family about the '),
                                              TextSpan(text: "risk, causes, and precautions about volcanic eruptions.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Attend to discussion regarding '),
                                              TextSpan(text: 'local safety plans and shelters.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Keep your '),
                                              TextSpan(text: 'mobile devices and power banks charged during a power outage. Reserve extra batteries for your battery-operated radio.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: "Know about disaster hotlines and other emergency hotlines ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'in preparation of the upcoming emergency and disaster events.\n\n'),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: 'If you have any machinery outside, '),
                                              TextSpan(text: "cover it with large tarps to protect if from volcanic ashes.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: "Bring your animals or pets into closed shelters.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '9. '),
                                              TextSpan(text: "Prepare goggles, glasses and proper clothing ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'in case of ashfall to come in contact with your skin and eyes.\n\n'),
                                              TextSpan(text: '10. '),
                                              TextSpan(text: "Prepare a go bag in case of evacuation that includes: \n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '• A N95 mask or other temporary to cover your nose.\n\n'),
                                              TextSpan(text: '• Copy of your personal documents.\n\n'),
                                              TextSpan(text: '• Matches and candles.\n\n'),
                                              TextSpan(text: '• Flashlight and extra batteries.\n\n'),
                                              TextSpan(text: '• At least 3 liters of drinking water.\n\n'),
                                              TextSpan(text: '• At least 3 days worth of canned goods.\n\n'),
                                              TextSpan(text: '• Hygiene and sanitation items.\n\n'),
                                              TextSpan(text: '• First aid kits.\n\n'),
                                              TextSpan(text: '• Extra money.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('DURING A VOLCANIC ERUPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: "Use N95 mask or any temporary mask, such as damp tissue from old T-shirts, ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to protect your lungs from respiratory injuries and illnesses.\n\n',),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: "Use glasses or goggles to protect your eyes and proper clothing to protect your skin from the ashfall. Don't rub if it comes in contact to your eyes and skin.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Make sure that your pets or animals are fine while they are on their shelter.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Stay tuned to any news broadcast using your battery-operated radio ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to keep informed of the recent updates in your area.\n\n'),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Close all doors and windows to your house. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Dampen curtains to keep other particles to pass through.\n\n'),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Cover your food and water containers to avoid contamination.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: 'If you are outside, '),
                                              TextSpan(text: "immediately look for any cover in case of rock or ash falls. \n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: 'If you are driving a vehicle, '),
                                              TextSpan(text: "pull over and stop if heavy ashfall occurs.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '9. '),
                                              TextSpan(text: "Keep distance to rivers or streams to prevent lahar flows.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('AFTER AN VOLCANIC ERUPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 20,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'Try not to leave your home or indoor shelters until ',),
                                              TextSpan(text: "informed by the local government. Evacuate immediately when notified.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Wait for further announcements regarding the volcanic eruption. '),
                                              TextSpan(text: "Follow the instructions and guidelines given by the local government.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Watch out for your children, friends, and family ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'who might go outside to see the situation.\n\n'),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Use masks, glasses or goggles, proper clothing ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'when removing ashes outside.\n\n'),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: "Clean your drains and roofs with water ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to prevent corrosion.\n\n'),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Practice the '),
                                              TextSpan(text: 'CHECK, CALL, CARE. Check the area, call for help, and provide first aid to other people.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: "Examine for any injuries.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: 'If you have evacuated, '),
                                              TextSpan(text: "return only when the authorities advised you to do so.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '9. '),
                                              TextSpan(text: "Reconnect with your loved ones and tell them that you are safe.\n\n",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 3.4,
                  child: Container(
                      height: 35,
                      width: 220,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('VOLCANIC ERUPTION',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget bulusan(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2975,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://sa.kapamilya.com/absnews/abscbnnews/media/2022/news/06/10/20220606-bulusan-evacuation-ho-159.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2975,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('QUIET OR NO ALERT (ALERT #0)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("All monitored parameters within background levels. "
                                    "Unremarkable level of volcanic earthquakes occurring within the volcano area. Generally weak steam emission.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Quiescence; no magmatic eruption is foreseen. However, there are hazards 1 (explosions, rockfalls and landslides) that may '),
                                              TextSpan(text: "suddenly occur within the four-kilometer radius Permanent Danger Zone (PDZ).",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('LOW LEVEL OF VOLCANIC UNREST (ALERT #1)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Slight increase in volcanic earthquake and steam/gas activity. "
                                    "Sporadic explosions from existing or new vents. Notable increase in the temperature of hot springs. "
                                    "Slight inflation or swelling of the edifice.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Hydrothermal, magmatic, or tectonic disturbances. The source of activity is shallow, near crater or in the vicinity of Irosin Caldera. '),
                                              TextSpan(text: "Entry into the PDZ must be prohibited.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),


                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('MODERATE LEVEL OF VOLCANIC UNREST (ALERT #2)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Elevated levels of any of the following: "
                                    "volcanic earthquake, steam/gas emission, ground deformation and hot spring temperature. "
                                    "Intermittent steam/ash explosion and above baseline Sulfur Dioxide2(SO2) emission rates. Increased swelling of volcanic edifice.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Probable intrusion of magma at depth, which can lead to magmatic eruption. '),
                                              TextSpan(text: "Entry within PDZ must be prohibited. Other areas within five (5) kilometers "
                                                  "of the active vent may be included in the danger zone.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HIGH LEVEL OF VOLCANIC UNREST (ALERT #3)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Sustained increases in the levels of volcanic earthquakes, some may be perceptible. "
                                    "Occurrence of low-frequency earthquakes, volcanic tremor, rumbling sounds. Forceful and voluminous steam/ash ejections. "
                                    "Sustained increases in SO2 emission rates, ground deformation/swelling of the edifice. Activity at the summit may involve "
                                    "dome growth and/or lava flow, resultant rockfall.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Magma is near or at the surface, and activity could lead to hazardous eruption in weeks. '),
                                              TextSpan(text: "Danger zones may be expanded up to eight (8) kilometers from the active crater.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HAZARDOUS ERUPTION IMMINENT (ALERT #4)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Intensifying unrest characterized by earthquake swarms and volcanic tremor, many perceptible. "
                                    "Frequent strong ash explosions. Sustained increase, or sudden drop, of SO2 emission. Increasing rates "
                                    "of ground deformation and swelling of the edifice. Lava dome growth and/or lava flow increases, with increased frequency and volume of rockfall.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Magmatic processes or effusive eruption underway, which can progress into highly hazardous eruption. '),
                                              TextSpan(text: "Danger Zone may be extended up to nine (9) kilometers or more from the active crater.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HAZARDOUS ERUPTION IN PROGRESS (ALERT #5)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Magmatic eruption characterized by explosive production of tall ash-laden eruption columns, "
                                    "or by massive collapses of summit lava dome. Generation of deadly pyroclastic flows, surges and/or lateral blasts and widespread ashfall.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Life-threatening eruption producing volcanic hazards that endanger communities. '),
                                              TextSpan(text: "Additional danger areas may be declared as eruption progresses.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),




                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('BULUSAN',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget hibok(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2030,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://live.staticflickr.com/255/18436661185_f2da93c338_z.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2030,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('ALERT #0',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Background, quiet",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'No eruption in foreseeable future in the volcano. '),

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('ALERT #1',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Low level seismic, fumarolic, other unrest.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Magmatic, tectonic or hydrothermal disturbance; no eruption imminent. '),

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),


                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('ALERT #2',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Low to moderate level of seismic, other unrest  with positive evidence for involvement of magma.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Probable magmatic intrusion; could eventually lead to an eruption. '),

                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('ALERT #3',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Relatively high and increasing unrest, including numerous b-type earthquakes, "
                                    "accelerating ground deformation and rockfalls, increased vigor of fumaroles, gas emission",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Increasing likelihood of an eruption, '),
                                              TextSpan(text: "possibly within days to week.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('ALERT #4',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Intense unrest, including harmonic tremor and/or may “long period” (=low frequency) earthquakes or quiet lava emissions and/or dome growth and/or small explosions.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Magma close to or at earth’s surface. '),
                                              TextSpan(text: "Hazardous explosive eruption likely, possible within hours to days.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('ALERT #5',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Hazardous explosive eruption in progress, with pyroclastic flows, surges and/or eruption column rising at least  6 km or 20,000 feet above sea level",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Explosive  eruption in progress. '),
                                              TextSpan(text: "Hazards in valleys and downwind",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),




                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('HIBOK-HIBOK',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget kanlaon(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 3100,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://files01.pna.gov.ph/category-list/2022/07/05/negocc-mt-kanlaon-050722.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height:3100,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('QUIET OR NO ALERT (ALERT #0)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("All monitored parameters within background levels. "
                                    "Unremarkable level of volcanic earthquakes occurring within the volcano area.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Quiescence; no magmatic eruption is foreseen. However, there are perennial hazards '),
                                              TextSpan(text: "(sudden explosions, rockfalls and landslides) within the four (4) kilometer-radius Permanent Danger Zone (PDZ) that may occur suddenly and without warning.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('LOW LEVEL OF VOLCANIC UNREST (ALERT #1)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Slight increase in volcanic earthquake and steam/gas activity. "
                                    "Sporadic explosions from existing or new vents. Notable increase in the temperature of hot springs. "
                                    "Slight inflation or swelling of the edifice.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Hydrothermal, magmatic, or tectonic disturbances. The source of activity is shallow, near crater or in the vicinity of Irosin Caldera. '),
                                              TextSpan(text: "Entry into the PDZ must be prohibited.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),


                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('MODERATE LEVEL OF VOLCANIC UNREST (ALERT #2)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Elevated levels of any of the following: "
                                    "volcanic earthquake, steam/gas emission, ground deformation and hot spring temperature. "
                                    "Intermittent steam/ash explosion and above baseline Sulfur Dioxide2(SO2) emission rates. Increased swelling of volcanic edifice.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Probable intrusion of magma at depth, which can lead to magmatic eruption. '),
                                              TextSpan(text: "Entry within PDZ must be prohibited.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HIGH LEVEL OF VOLCANIC UNREST (ALERT #3)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Sustained increases in the levels of volcanic earthquakes, some may be perceptible. "
                                    "Occurrence of low-frequency earthquakes, volcanic tremor, rumbling sounds. Forceful and voluminous steam/ash ejections. "
                                    "Sustained increases in SO2 emission rates, ground deformation/swelling of the edifice. Activity at the summit may involve "
                                    "dome growth and/or lava flow, resultant rockfall.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Magmatic intrusion to shallow levels of the edifice is driving unrest, with indications that hazardous eruption could occur in weeks. '),
                                              TextSpan(text: "Danger zones may be expanded to a radius of six (6) kilometers from the summit crater or active vent.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HAZARDOUS ERUPTION IMMINENT (ALERT #4)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Intensifying unrest characterized by earthquake swarms and volcanic tremor, many of which may be perceptible. "
                                    "Frequent strong ash explosions. Increasing rates of ground deformation and swelling of the edifice. Increasing rates of lava"
                                    " extrusion with increased frequency and volume of rockfall and volcanic gas flux, or abrupt decrease in volcanic gas flux "
                                    "due to plugging of lava at the summit crater or active vent.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Low-level magmatic eruption underway, which can progress to highly hazardous major eruption within hours or days. '),
                                              TextSpan(text: "Danger zones may be expanded to a radius of ten (10) kilometers or more from the summit crater or active vent.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HAZARDOUS ERUPTION IN PROGRESS (ALERT #5)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("MagmatiM eruption characterized by explosive production of tall ash-laden eruption columns, "
                                    "and/or descent and frequent failure of voluminous lava flows. Generation of deadly pyroclastic flows, "
                                    "surges and/or lateral blasts and widespread tephra fall (ashfall). Lahars generate along river channels.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Life-threatening eruption producing volcanic hazards that endanger communities. '),
                                              TextSpan(text: "Danger zones may be expanded to fourteen (14) kilometers as eruption progresses.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),




                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('KANLAON',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget mayon(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2680,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://s.yimg.com/ny/api/res/1.2/G5K_MrfwodXTh5Rs_ScQJg--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQ3OQ--/https://s.yimg.com/os/en-PH/blogs/inbox/Cagsawa-ruins-with-Mayon-Volcano-at-the-background.-From-flickr..jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height:2680,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('NO ALERT (ALERT #0)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Quiet. All monitored parameters within background levels.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'No eruption in foreseeable future. '),
                                              TextSpan(text: "Entry in the 6-km radius Permanent Danger Zone (PDZ) is not advised "
                                                  "because phreatic explosions and ash puffs may occur without precursors.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('ABNORMAL (ALERT #1)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Low level unrest. Slight increase in seismicity. Slight increase in SO2 gas output above the "
                                    "background level. Very faint glow of the crater may occur but no conclusive evidence of magma ascent. "
                                    "Phreatic explosion or ash puffs may occur.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'No eruption imminent. Activity may be hydrothermal, magmatic or tectonic in origin. '),
                                              TextSpan(text: "No entry in the 6-km radius PDZ.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),


                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('INCREASING UNREST (ALERT #2)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Moderate unrest. Low to moderate level of seismic activity. "
                                    "Increasing SO2 flux. Faint/intermittent crater glow. Swelling of edifice may be detected. "
                                    "Confirmed reports of decrease in flow of wells and springs during rainy season.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Unrest probably of magmatic origin; could eventually lead to eruption. '),
                                              TextSpan(text: "6-km radius Danger Zone may be extended to 7 km in the sector where the crater rim is low.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('INCREASED TENDENCY TOWARDS HAZARDOUS ERUPTION (ALERT #3)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Relatively high unrest. Volcanic quakes and tremor may become more frequent. "
                                    "Further increase in SO2 flux. Occurrence of rockfalls in summit area. Vigorous steaming / sustained crater glow. "
                                    "Persistent swelling of edifice.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Magma is close to the crater. If trend is one of increasing unrest, eruption is possible within weeks. '),
                                              TextSpan(text: "Extension of Danger Zone in the sector where the crater rim is low will be considered.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HAZARDOUS ERUPTION IMMINENT (ALERT #4)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Intense unrest. Persistent tremor, many “low frequency”-type earthquakes. "
                                    "SO2 emission level may show sustained increase or abrupt decrease. Intense crater glow. Incandescent lava dome, "
                                    "lava fountain, lava flow in the summit area.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Hazardous eruption is possible within days. '),
                                              TextSpan(text: "Extension of Danger zone to 8 km or more in the sector where the crater rim is low will be recommended.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HAZARDOUS ERUPTION (ALERT #5)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Hazardous eruption ongoing. Occurrence of pyroclastic flows, tall eruption columns and extensive ashfall.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Pyroclastic flows may sweep down along gullies and channels, especially along those fronting the low part(s) of the crater rim. '),
                                              TextSpan(text: "Additional danger areas may be identified as eruption progresses. Danger to aircraft, "
                                                  "by way of ash cloud encounter, depending on height of eruption column and/or wind drift.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),




                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('MAYON',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget taal(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 3630,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/84/a2/7f/beautiful-taal-lake-hiked.jpg?w=1200&h=-1&s=1'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height:3630,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('NORMAL (ALERT #0)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Volcanic earthquakes typically <5/day; Main Crater Lake gas (diffuse CO2) "
                                    "emission within 1,000 tonnes/day, average water temperature <35ºC and acidity >pH2.5; "
                                    "General stationary or deflationary trends in ground deformation.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Quiescence; no major eruption in foreseeable future, but steam-driven and gas eruptions can occur without warning. '),
                                              TextSpan(text: "Permanent habitation on Taal Volcano Island (TVI) must not be allowed.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('LOW LEVEL UNREST (ALERT #1)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Moderate level of seismic activity with some felt events; Main Crater Lake gas (diffuse CO2) "
                                    "emission >1,000 tonnes/day, slight increases in fumarole and/or Main Crater Lake temperatures and acidity; "
                                    "Slight and/or localized inflationary ground deformation changes in TVI.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Hydrothermal or tectonic activity beneath the volcano may be occurring; steam-driven, gas or hydrothermal explosions can occur without warning. '),
                                              TextSpan(text: "Entry into the TVI Main Crater, the Daang Kastila fissure area and the Mt. Tabaro eruption site must not be allowed..",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),


                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('INCREASING UNREST (ALERT #2)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Elevated level of seismic activity with some felt events in TVI and Taal Caldera (TC); "
                                    "Occurrence of earthquake swarms and low-frequency events; Sustained increases in inflationary "
                                    "ground deformation including ground tilt in TVI; Slight positive microgravity changes in TVI and TC; "
                                    "Increasing fumarole temperature and acidity and upwelling in the Main Crater Lake; Significant increases in CO2 emission, "
                                    "instrumental detection of airborne SO2 >500 tonnes/day.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Shallow hydrothermal unrest and/or deep-seated magmatic intrusion may be occurring, bringing higher chances of steam-driven, gas or hydrothermal explosions. '),
                                              TextSpan(text: "Entry into TVI must not be allowed. Communities in pre-defined areas of the highest hazard must ready for possible evacuation.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('INTENSIFIED UNREST / MAGMATIC UNREST (ALERT #3)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Sudden increase or decline in seismic activity; Perceptible earthquakes, "
                                    "occurrence of swarms of volcano-tectonic and/or hybrid earthquakes; Elevating SO2 flux; "
                                    "Significant changes in Main Crater Lake temperature and/or acidity; Accelerating increase in ground inflation, "
                                    "rapid increase in ground tilt in TVI; Precursory phreatic or weak phreatomagmatic eruptions commence.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Magmatic or explosive phreatomagmatic eruption is imminent; precursory eruptive activity may be taking place and generating ashfall, ballistics and/or short lava flows. '),
                                              TextSpan(text: "TVI, Taal Lake and pre-defined lakeshore communities of Batangas facing the active vent must be evacuated.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HAZARDOUS ERUPTION IMMINENT (ALERT #4)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Rapidly intensifying volcanic earthquakes, continuous volcanic tremor, "
                                    "frequent felt earthquakes; Profuse degassing or ash explosions along existing or new vents "
                                    "and fissures; Elevated and/or sudden drop in SO2 flux; Accelerating increase or reversal of ground "
                                    "deformation patterns and ground fissuring; Explosive eruption or lava effusion with or without volcanic lightning commence.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Strong phreatomagmatic or magmatic eruption is taking place, which may or may not lead to violently explosive eruption. Widespread ashfall and ballistics, lava flows and minor pyroclastic density currents (PDCs) on TVI may be generated. '),
                                              TextSpan(text: "Communities in pre-determined worst-case or scenario-based volcanic hazards zones must be evacuated.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HIGHLY HAZARDOUS ERUPTION IN PROGRESS (ALERT #5)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Continuous intense seismic activity, including explosion-type volcanic earthquakes "
                                    "and strong felt events; Sustained tall eruption column with expansive umbrella cloud accompanied "
                                    "by loud booming sounds and volcanic lightning; Generation of PDCs/base surges and volcanic tsunami that transport "
                                    "across Taal Lake and lakeshore towns; Ground fissuring and large-particle tephra fall impacting lakeside communities and ashfall impacting farther areas.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Plinian/ Subplinian/ Violent phreatomagmatic eruption is taking place. Extreme life-threatening hazards of base surges/PDCs, volcanic tsunami, thick tephra fall/ashfall, fissuring, lahars and landslides could impact communities around the lake and downwind of the eruption plume. '),
                                              TextSpan(text: "Additional areas for evacuation should be considered based on prevailing conditions.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),




                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('TAAL',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
  Widget pinatubo(context) {
    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 3630,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.britannica.com/17/118317-050-8ED46074/Mount-Pinatubo-Philippines.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height:3630,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('NORMAL (ALERT #0)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Volcanic earthquakes typically <5/day; Caldera lake CO2 flux <1000 tonnes/day.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Quiescence; no major eruption in foreseeable future. '),
                                              TextSpan(text: "Communities at risk must continue preparedness efforts.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('LOW LEVEL UNREST (ALERT #1)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Volcanic earthquake clusters along regional faults or lineaments or within the hydrothermal system; "
                                    "Changes in fumarolic activity in the crater; increased crater lake CO2 flux and CO2/H2S ratio changes.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Hydrothermal or local tectonic activity beneath/near the volcano may be occurring; no eruption imminent. '),
                                              TextSpan(text: "Extreme caution when venturing into the Pinatubo Caldera recommended.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),


                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('INCREASING UNREST (ALERT #2)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Increased and shallowing high-frequency (HF) or volcano-tectonic (VT) earthquake clusters, "
                                    "shallow sporadic low-level tremor with long-period (LP) or low-frequency (LF) events, DLPs (deep long period) "
                                    "events at sub-crustal depths; Continued increases in crater lake CO2 flux and CO2/H2S ratios, significant SO2 "
                                    "emission may be detected; Increased fumarolic activity with discrete weak phreatic eruptions; Ground deformation detected by satellite systems.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Deep-seated magmatic intrusion and/ or increased hydrothermal activity may be occurring, with increased chances of phreatic, gas or hydrothermal explosions; could eventually lead to an eruption. '),
                                              TextSpan(text: "No entry into Pinatubo Caldera; Preparation of communities in case of escalation of unrest.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('INTENSIFIED UNREST / MAGMATIC UNREST (ALERT #3)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("VT/ HF earthquake clusters or swarms within shallow depths of the edifice, "
                                    "increase in the intensity and duration of LP/LF events, DLP clusters at lower crustal depths; "
                                    "Sustained or increasing SO2 emission, increased phreatic activity with explosion-type earthquakes or "
                                    "tremor episodes; Increasing ground deformation or inflation of the edifice.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Certain magmatic intrusion into the shallow magma system or edifice, with higher chances of a major eruption; precursory eruptive activity due to disruption of the hydrothermal system; lava dome growth may occur. '),
                                              TextSpan(text: "Evacuation of upland communities up to 10-kilometers from the summit caldera.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HIGHLY HAZARDOUS ERUPTION IMMINENT (ALERT #4)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Strong VT/ HF earthquakes within a few kilometers depth of the edifice with felt intensities, "
                                    "episodic swarms of hybrid or LP earthquakes, episodic tremor with continuous ash emission, sustained and intensifying "
                                    "volcanic tremor, episodic explosion earthquakes with explosive activity; Increasing incidence and magnitudes of volcanic "
                                    "earthquakes; Successive explosions with pronounced eruption columns and small-volume pyroclastic density currents (PDCs); "
                                    "Intense ground deformation or bulging of the summit region; Abrupt increase or drop in SO2/volcanic gas flux.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Phreatomagmatic or pre-climactic magmatic eruption; If magma ascent rates increase, '
                                                  'highly explosive eruption probable within hours to a few days; if magma ascent rates decrease, prolonged lava dome growth may occur. '),
                                              TextSpan(text: "Evacuation of communities within pre-determined hazard zones for PDCs, heavy ashfall and syn-eruption lahars.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('HIGHLY HAZARDOUS ERUPTION IN PROGRESS (ALERT #5)',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text("Successive explosion-type earthquakes or large-amplitude volcanic tremor and VT "
                                    "earthquakes; Successive or sustained explosions with large eruption column and pronounced umbrella "
                                    "cloud that could exceed 20-kilometer heights above the crater; extensive PDCs emplaced around the "
                                    "edifice; widespread ashfall; syn-eruption lahars.",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('RECOMMENDATIONS',style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),


                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Climactic Subplinian to Plinian eruption; Volcanic hazards expected within 30-kilometer radius of the crater and downwind of the eruption plume. '),
                                              TextSpan(text: "Evacuation of additional communities, downwind of the eruption plume, along major river systems and in buffer extensions of hazard zones.",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),




                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('PINATUBO',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }



}

class landslide extends StatefulWidget {
  //const landslideReal({Key? key}) : super(key: key);
  final Injury injury;
  landslide({required this.injury});

  @override
  State<landslide> createState() => _landslideState();
}

class _landslideState extends State<landslide> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 3600,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://blogs.agu.org/landslideblog/files/2018/09/18_09-Ubon-1-e1537163593232.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 3600,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('The word landslide can refer to any movement of rock, earth, or debris down a slope, such as on a hillside. '
                                    'Landslides are caused by rain, earthquakes, volcanoes, or other factors that make the slope unstable.\n\n'
                                    'To scientists who study the physical formations of the Earth, landslides are one type of mass wasting. '
                                    "A mass wasting is any downward movement in which the Earth's surface is worn away. "
                                    "Other types of mass wasting include rockfalls and the flow of shore deposits called alluvium.",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('BEFORE A LANDSLIDE',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'When building a home, ',),
                                              TextSpan(text: 'avoid construction near steep slopes, close to mountain edges, near drainage ways, or natural erosion valleys.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Have a '),
                                              TextSpan(text: 'landscaping assessment of your property.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Consult area officials, state geological surveys or departments of natural resources, and university departments of geology ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'for information on landslides in your area.\n\n'),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Consider the patterns of storm-water drainage near your home, and note the places where runoff water converges. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'These areas are potential danger zones during a storm.\n\n'),
                                              TextSpan(text: 'Minimize home hazards:\n\n',style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '- To avoid gas or water leaks, have flexible fittings installed. You only need a few basic tools for this job, and it may be a good idea to have an experienced plumber there in case anything goes wrong.\n\n'),
                                              TextSpan(text: '- You may want to plant ground cover on slopes to prevent soil erosion and build retaining walls to stop water from damaging your foundation.\n\n'),
                                              TextSpan(text: '- If you live in a mudflow area, then build channels or deflection walls to direct the flow around buildings.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('DURING A LANDSLIDE',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'After days of heavy rain, ',),
                                              TextSpan(text: 'debris flows can cause flash floods. Stay alert for these dangers, and be aware that intense rainfall may be particularly dangerous.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'If you are in an area prone to landslides or debris flows, '),
                                              TextSpan(text: 'consider leaving if it is safe to do so. Remember that driving during a storm can be hazardous. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If you remain at home, '),
                                              TextSpan(text: 'move to the second floor of your home if possible. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'This will help keep you safe from the path of a landslide or debris flow.\n\n'),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Watch out for moving debris such as trees cracking or boulders knocking together. Watch out for moving debris such as trees cracking or boulders knocking together. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Sometimes a trickle of flowing or falling mud or debris may precede larger landslides.\n\n'),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'If you are near a stream or channel, '),
                                              TextSpan(text: 'be aware of sudden changes in water flow and water clarity. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "These signs may hint at landslide activity upstream, so it's time to move quickly. Don't save your belongings! Save yourself.\n\n"),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Drive carefully, ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Bridges may be washed out, and culverts overtopped. "),
                                              TextSpan(text: "Don't cross flooding streams. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Watch for landslides along the road.\n\n"),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Beware that strong shaking from earthquakes can induce landslides.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('AFTER A LANDSLIDE',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'Please stay outside the slide area, as additional slides could fall.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Listen to local radio and television stations ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'for the most up-to-date emergency information.\n\n'),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Be alert for flooding, which may result from landslides or debris flows. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'These two events can be caused by the same event.\n\n'),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Check for injured persons at the bottom of the slide, without entering the slide area. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Instruct rescuers to follow you to their locations.\n\n'),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'People with disabilities, the elderly, and infants may need special assistance in a disaster. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'People who care for these individuals or who have large families may also need assistance.\n\n'),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Report any broken utility lines and damaged roadways and railways ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "to the appropriate authorities as soon as possible.\n\n"),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: "Inspect the building foundation, chimney, and surrounding land for cracks, loose bricks, and other signs of damage. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Cracks, loose bricks, and other signs of damage may alert you to the dangers posed by an unstable structure.\n\n"),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: 'Since erosion from a loss of ground cover can lead to flash flooding and additional landslides, '),
                                              TextSpan(text: 'it is important to replant the damaged ground as soon as possible.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '9. '),
                                              TextSpan(text: 'Consult a geotechnical engineer ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'for an evaluation of the landslide hazards in your area as these professionals can advise you of the best ways to '),
                                              TextSpan(text: 'rectify or avoid the danger created by a landslide.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('LANDSLIDE',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class elnino extends StatefulWidget {
  //const elnino({Key? key}) : super(key: key);
  final Injury injury;
  elnino({required this.injury});
  @override
  State<elnino> createState() => _elninoState();
}

class _elninoState extends State<elnino> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 2240,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.rappler.com/tachyon/r3-assets/7DC971E5375047F9A9932BCC01529447/img/A97B71F2DE4C417EA707A2685D90E46F/el-nino-march-19-2019-004.jpg'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 2240,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is a climate pattern that shows the unusual warming of surface waters in the in the eastern tropical of the Pacific Ocean.',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('BEFORE EL NIÑO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'Store plenty of drinking water.\n\n', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Prepare some instant foods that '),
                                              TextSpan(text: 'does not need water to cook with.\n\n', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Use disposable food containers.\n\n', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Use Paper fans ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'to avoid using electrical usage in extreme hot weather.\n\n'),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Learn how to do First Aid ', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'for heat related accidents or illness.\n\n'),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Prepare face masks ', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'for people with respiratory problem.\n\n'),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: 'Store water in buckets/containers ', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'in case of water rationing in your area.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('DURING EL NIÑO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: 'Avoid using too much water ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'if not necessary\n\n',),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Drink plenty of water / fluids to avoid dehydration.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Try to be updated as always on news and reports in television or radio.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Wear light clothing.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Avoid doing activities that is strenuous / tiring',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('AFTER EL NIÑO',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'Do not turn gas back on yourself. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Rely on utility crews.\n\n',),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Do not use fresh foods or canned goods ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'that have come in contact with flood waters.\n\n'),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Follow local instructions regarding the safety of drinking water. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If in doubt, '),
                                              TextSpan(text: 'boil or purify water before drinking. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'Have wells pumped out and the water tested before drinking.\n\n'),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Avoid disaster areas, ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'your presence could hamper rescue and other emergency operations, and you may be in danger.\n\n'),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Do not handle live electrical equipment in wet areas. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'If electrical equipment or appliances have been in contact with water, have them checked before use.\n\n'),
                                              TextSpan(text: '6. '),
                                              TextSpan(text: 'Avoid downed power lines and broken gas lines. ',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: "Report them immediately to the electric or gas company, police or fire department.\n\n"),
                                              TextSpan(text: '7. '),
                                              TextSpan(text: "Use flashlights not lanterns, matches or candles to examine buildings. ",style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: " Flammables may or could be inside.\n\n"),
                                              TextSpan(text: '8. '),
                                              TextSpan(text: 'Stay tuned to radio or television ', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'for information and instructions from local authorities.'),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('EL NIÑO',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

class lanina extends StatefulWidget {
  //const lanina({Key? key}) : super(key: key);
  final Injury injury;
  lanina({required this.injury});
  @override
  State<lanina> createState() => _laninaState();
}

class _laninaState extends State<lanina> {
  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;

    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    Color tertiaryColor = Color(0xFF47B5FF);
    Color subColor = Color(0xFFDFF6FF);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                Container(
                  height: 1420,
                ),
                Container(
                    height: 280,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://s.yimg.com/ny/api/res/1.2/odXbilngb_n9Knxfeijk.A--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQyNw--/https://s.yimg.com/os/creatr-uploaded-images/2022-08/143de250-24f9-11ed-bddf-56f953e08257'
                          )
                          ,fit: BoxFit.fill
                      ),
                    )
                ),
                Positioned(
                  top: 250,
                  child: Container(
                    width: width,
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 35),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30)
                              ),
                              color: Colors.white
                          ),
                          height: 1420,
                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.only(top: 10),
                                width:width,
                                child: Text('DESCRIPTION',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                width: width,
                                child: Text('It is a climate pattern that is characterized by unusual cold temperature in the Equatorial Pacific which led to numerous tropical storms in the Pacific Ocean',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey[600],
                                      height: 1.5),
                                  textAlign: TextAlign.justify,),
                              ),
                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('BEFORE LA NIÑA',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1. ',),
                                              TextSpan(text: 'Prepare first aid kit ', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'in case of emergency or accident.\n\n',),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Clean-up all possible moquito sides ', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'such as in vases or any side of your house that mosquitos appear.\n\n'),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'Make a flood emergeny plan and know where is your gas, electricity and water mains are ', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: 'in case you need to turn them off.\n\n'),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'If early warning is issued by the authorities, '),
                                              TextSpan(text: 'follow it.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '5. '),
                                              TextSpan(text: 'Stay alert and always be updated in news.', style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('DURING LA NIÑA',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: '1.',),
                                              TextSpan(text: 'Stay inside your home during heavy rainfall.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '2. '),
                                              TextSpan(text: 'Avoid going out and do not shower while it is raining.\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '3. '),
                                              TextSpan(text: 'If you are a resident in low placed areas, if the flood is getting bigger '),
                                              TextSpan(text: 'seek shelter at higher grounds/places\n\n',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                              TextSpan(text: '4. '),
                                              TextSpan(text: 'Try to be updated on news and reports in television or radio.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Divider(color: primaryColor,endIndent: 5,indent: 5,),

                              Container(
                                padding: EdgeInsets.only(top: 30),
                                width:width,
                                child: Text('AFTER LA NIÑA',style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.only(top: 10,bottom: 30),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                height: 1.5,
                                                fontSize: 16,color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(text: 'Check all the casualties it has caused in your surroundings.',style: TextStyle(
                                                  fontWeight: FontWeight.bold
                                              )),
                                            ]
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 235,
                  right: width / 2.3,
                  child: Container(
                      height: 35,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: primaryColor,
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text('LA NIÑA',style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        ),
                      )
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}

