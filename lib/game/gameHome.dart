import 'package:flutter/material.dart';
import 'package:prototype1/game/choking.dart';
import 'package:prototype1/game/gobag.dart';
import 'package:prototype1/game/seizure.dart';

class gameHome extends StatefulWidget {
  const gameHome({Key? key}) : super(key: key);

  @override
  State<gameHome> createState() => _gameHomeState();
}

class _gameHomeState extends State<gameHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
        leading: BackButton(color: Colors.black,),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
          IconButton(
            icon: const Icon(Icons.info_rounded,color: Colors.black,),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    icon: Icon(Icons.info_rounded),
                    title: Text('Information'),
                    content: Text("This is the game module of our application, "
                        "which allows you to experience being in an emergency situation "
                        "where you may need to provide emergency lifesaving procedures such as "
                        "CPR and the Heimlich maneuver. This provides a series of events that would "
                        "let you decide what to do next and shows the possible consequences of each action."

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
      body: gameDesign(),

    );
  }
}

class gameDesign extends StatelessWidget {
  const gameDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    Color primaryColor = Color(0xFF06283D);
    Color secondColor = Color(0xFF256D85);
    return Container(
      width: width,
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      child: Column(
        children: [
        Align(
        alignment: Alignment.topLeft,
        child: Container(

          child: Text("Let's Play",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),
          ),
        ),
      ),
        Align(
        alignment: Alignment.topLeft,
        child: Container(
          child: Text("Let's put you in the situation",style: TextStyle(
            fontSize: 18,

          ),
          ),
        ),
      ),
        SizedBox(height: 50,),
        GestureDetector(
          onTap: (){
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  actions: <Widget>[
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel')),
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context)=> seizureGame(),
                          ));

                        },
                        child: Text("Let's Play!")),
                  ],
                  icon: Icon(Icons.warning_rounded),
                  title: Text('Seizure'),
                  content: Text('Are you sure to play?'

                  ),
                  scrollable: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                )
            );
          },
          child: Column(
            children: [
              Container(
                width: width,
                height: 100,
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Seizure',style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                          Text('A random stranger has seizure, help him out!',style: TextStyle(
                            color: Colors.white
                          ),
                          )
                        ],
                      ),
                      padding: EdgeInsets.all(10),
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)),
                        color: primaryColor,
                      ),
                      width: width / 1.5 - 20,

                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                        color: secondColor,
                      ),
                      width: width /3 - 20,

                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
            onTap: (){
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=> gobagGame(),
                            ));

                          },
                          child: Text("Let's Play!")),
                    ],
                    icon: Icon(Icons.warning_rounded),
                    title: Text('Go-Bag'),
                    content: Text('Are you sure to play?'

                    ),
                    scrollable: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                  )
              );
            },
            child: Column(
              children: [
                SizedBox(height: 8,),
                Container(
                  width: width,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('Go-Bag',style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                            Text('You are in danger, quick! plan you evacuation.',style: TextStyle(
                                color: Colors.white
                            ),
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(10),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: primaryColor,
                        ),
                        width: width / 1.5 - 20,

                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: secondColor,
                        ),
                        width: width /3 - 20,

                      )
                    ],
                  ),
                ),
                SizedBox(height: 8,),

              ],
            ),
          ),
        GestureDetector(
            onTap: (){
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    actions: <Widget>[
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context)=> chokingGame(),
                            ));

                          },
                          child: Text("Let's Play!")),
                    ],
                    icon: Icon(Icons.warning_rounded),
                    title: Text('Choking'),
                    content: Text('Are you sure to play?'

                    ),
                    scrollable: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                  )
              );
            },
            child: Column(
              children: [
                Container(
                  width: width,
                  height: 100,
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('Choking',style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                            Text('There are someone choking, you need to do something!',style: TextStyle(
                                color: Colors.white
                            ),
                            )
                          ],
                        ),
                        padding: EdgeInsets.all(10),
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                          color: primaryColor,
                        ),
                        width: width / 1.5 - 20,

                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          color: secondColor,
                        ),
                        width: width /3 - 20,

                      )
                    ],
                  ),
                ),


              ],
            ),
          ),



    ])
    );
  }
}
