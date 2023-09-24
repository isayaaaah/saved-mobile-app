import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prototype1/game/gameHome.dart';
import 'package:prototype1/screens/home/contentsreal.dart';

class seizureGame extends StatefulWidget {
  const seizureGame({Key? key}) : super(key: key);

  @override
  State<seizureGame> createState() => _seizureGameState();
}

class _seizureGameState extends State<seizureGame> {

  String imageLink = 'assets/game/scene1.png';

  String key1 = 'Friday morning, you are walking in the school and suddenly saw another student having a seizure. What will you do?';
  String key1blank = '';
  late int _textLength;
  late int _index;
  late bool _isForward;
  Timer? timer;

  @override
  void initState() {
    _textLength = key1.length;
    _index = 0;
    _isForward = true;
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(_isForward){
        _index++;
        if(_index > _textLength){
          _index--;
          _isForward = false;
        }
      }
      setState(() {
        key1blank = key1.substring(0,_index);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final appBar = AppBar(
      title: const Text(''),
      leading: BackButton(color: Colors.black,),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],
    );

    double width = MediaQuery.of(context).size.width;


    Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.warning_rounded,color: Colors.red,),
          title: Text('Do you want to exit the game?'),
          scrollable: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          actions: <Widget>[
            TextButton(
                onPressed: (){
                  Navigator.pop(context, false);
                },
                child: Text('No')
            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context, true);
                },
                child: Text('Yes')
            )
          ],
        )
    );

    return WillPopScope(
      onWillPop: () async{
        final shouldPop = await showWarning(context);

        return shouldPop ??false;
      },
      child: Scaffold(
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
        body: Container(
          child: Column(
            children: [
              Container(
                height: 275,
                width: width,
                child: Image.asset(imageLink,fit: BoxFit.fill,),
              ),
              Container(
                width: width,
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Text(key1blank,style: TextStyle(
                    fontSize: 18
                ),
                ),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1)
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> nearhim(),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 75,
                  width: width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Go rush near him',style: TextStyle(
                    fontSize: 20,

                  ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> call911(),
                  ));
                },
                child: Container(
                  margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 75,
                  width: width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Call 911 for help',style: TextStyle(
                    fontSize: 20,

                  ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              icon: Icon(Icons.info_rounded),
                              title: Text('That is not the appropriate action to do. You should help as you can'),
                              scrollable: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(15))
                              ),
                            )
                        );

                },
                child: Container(
                  margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                  decoration: BoxDecoration(
                      color: Color(0xFFF1F1F1),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  height: 75,
                  width: width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Laugh',style: TextStyle(
                    fontSize: 20,

                  ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class nearhim extends StatefulWidget {
  const nearhim({Key? key}) : super(key: key);

  @override
  State<nearhim> createState() => _nearhimState();
}

class _nearhimState extends State<nearhim> {

  String imageLink = 'assets/game/nearhim.png';

  String key1 = 'You are now near him, what are you going to do?';
  String key1blank = '';
  late int _textLength;
  late int _index;
  late bool _isForward;
  Timer? timer;

  @override
  void initState() {
    _textLength = key1.length;
    _index = 0;
    _isForward = true;
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(_isForward){
        _index++;
        if(_index > _textLength){
          _index--;
          _isForward = false;
        }
      }
      setState(() {
        key1blank = key1.substring(0,_index);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text(''),
      leading: BackButton(color: Colors.black,),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],
    );

    double width = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;


    Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.warning_rounded,color: Colors.red,),
          title: Text('Do you want to exit the game?'),
          scrollable: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          actions: <Widget>[
            TextButton(
                onPressed: (){
                  Navigator.pop(context, false);
                },
                child: Text('No')
            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context, true);
                },
                child: Text('Yes')
            )
          ],
        )
    );

    return WillPopScope(
        onWillPop: () async{
          final shouldPop = await showWarning(context);

          return shouldPop ??false;
        },
    child: Scaffold(
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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 275,
              width: width,
              child: Image.asset(imageLink,fit: BoxFit.fill,),
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(key1blank,style: TextStyle(
                  fontSize: 18
              ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1)
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('There is nobody to help you. You should do it yourself.'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Shout 'help' ",style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text("You know that the person can't speak as he is having seizure as of now."),

                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Ask him if he is okay',style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> afternear(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Help him to get air by leaning him sideways',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,


                  ),
                ),
              ),
              ),
            ),

          ],
        ),
      ),
    )
    );
  }

}

class call911 extends StatefulWidget {
  const call911({Key? key}) : super(key: key);

  @override
  State<call911> createState() => _call911State();
}

class _call911State extends State<call911> {

  String imageLink = 'assets/game/call911.png';

  String key1 = 'You are now in the line with 911 and they say that they will take approximately 10 minutes to arrive in the school. What will you do?';
  String key1blank = '';
  late int _textLength;
  late int _index;
  late bool _isForward;
  Timer? timer;

  @override
  void initState() {
    _textLength = key1.length;
    _index = 0;
    _isForward = true;
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(_isForward){
        _index++;
        if(_index > _textLength){
          _index--;
          _isForward = false;
        }
      }
      setState(() {
        key1blank = key1.substring(0,_index);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text(''),
      leading: BackButton(color: Colors.black,),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],
    );

    double width = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;


    Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.warning_rounded,color: Colors.red,),
          title: Text('Do you want to exit the game?'),
          scrollable: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          actions: <Widget>[
            TextButton(
                onPressed: (){
                  Navigator.pop(context, false);
                },
                child: Text('No')
            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context, true);
                },
                child: Text('Yes')
            )
          ],
        )
    );

    return WillPopScope(
        onWillPop: () async{
          final shouldPop = await showWarning(context);

          return shouldPop ??false;
        },
   child: Scaffold(
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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 275,
              width: width,
              child: Image.asset(imageLink,fit: BoxFit.fill,),
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(key1blank,style: TextStyle(
                  fontSize: 18
              ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1)
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('You should take immediate action as the person is struggling'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Wait for the ambulance ",style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('There is nobody to help you. You should do it yourself.'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Ask help from the passerbyers',style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> afternear(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Help him to get air by leaning him sideways',style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

          ],
        ),
      ),
   )
    );
  }
}

class afternear extends StatefulWidget {
  const afternear({Key? key}) : super(key: key);

  @override
  State<afternear> createState() => _afternearState();
}

class _afternearState extends State<afternear> {

  String imageLink = 'assets/game/leaningsideways.png';

  String key1 = 'You are now leaning him, what is the next step?';
  String key1blank = '';
  late int _textLength;
  late int _index;
  late bool _isForward;
  Timer? timer;

  @override
  void initState() {
    _textLength = key1.length;
    _index = 0;
    _isForward = true;
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(_isForward){
        _index++;
        if(_index > _textLength){
          _index--;
          _isForward = false;
        }
      }
      setState(() {
        key1blank = key1.substring(0,_index);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text(''),
      leading: BackButton(color: Colors.black,),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],
    );

    double width = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;


    Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.warning_rounded,color: Colors.red,),
          title: Text('Do you want to exit the game?'),
          scrollable: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          actions: <Widget>[
            TextButton(
                onPressed: (){
                  Navigator.pop(context, false);
                },
                child: Text('No')
            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context, true);
                },
                child: Text('Yes')
            )
          ],
        )
    );

    return WillPopScope(
        onWillPop: () async{
          final shouldPop = await showWarning(context);

          return shouldPop ??false;
        },
    child: Scaffold(
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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 275,
              width: width,
              child: Image.asset(imageLink,fit: BoxFit.fill,),
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(key1blank,style: TextStyle(
                  fontSize: 18
              ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1)
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> aftersupporthead(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Support his head to avoid head injury',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,


                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('You should never do this. Help the person instead.'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Record it and post it on the instagram',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,


                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('Not the appropriate action to do in this situation.'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('eat the vomit',style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

          ],
        ),
      ),
    )
    );
  }
}

class aftersupporthead extends StatefulWidget {
  const aftersupporthead({Key? key}) : super(key: key);

  @override
  State<aftersupporthead> createState() => _aftersupportheadState();
}

class _aftersupportheadState extends State<aftersupporthead> {

  String imageLink = 'assets/game/supporthead.png';

  String key1 = 'While you are supporting his head, What will be the next action to take?';
  String key1blank = '';
  late int _textLength;
  late int _index;
  late bool _isForward;
  Timer? timer;

  @override
  void initState() {
    _textLength = key1.length;
    _index = 0;
    _isForward = true;
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(_isForward){
        _index++;
        if(_index > _textLength){
          _index--;
          _isForward = false;
        }
      }
      setState(() {
        key1blank = key1.substring(0,_index);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text(''),
      leading: BackButton(color: Colors.black,),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],
    );

    double width = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;


    Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.warning_rounded,color: Colors.red,),
          title: Text('Do you want to exit the game?'),
          scrollable: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          actions: <Widget>[
            TextButton(
                onPressed: (){
                  Navigator.pop(context, false);
                },
                child: Text('No')
            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context, true);
                },
                child: Text('Yes')
            )
          ],
        )
    );

    return WillPopScope(
        onWillPop: () async{
          final shouldPop = await showWarning(context);

          return shouldPop ??false;
        },
    child: Scaffold(
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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 275,
              width: width,
              child: Image.asset(imageLink,fit: BoxFit.fill,),
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(key1blank,style: TextStyle(
                  fontSize: 18
              ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1)
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('You should never do this.'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Shake his head",style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> aftersurevomit(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Make sure that the vomit is not coming back on his mouth',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,


                    ),
                  ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('There is a probability that the person will die.'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Cover his nose',style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

          ],
        ),
      ),
    )
    );
  }
}

class aftersurevomit extends StatefulWidget {
  const aftersurevomit({Key? key}) : super(key: key);

  @override
  State<aftersurevomit> createState() => _aftersurevomitState();
}

class _aftersurevomitState extends State<aftersurevomit> {

  String imageLink = 'assets/game/makesure.png';

  String key1 = 'You are now sure that the vomit is not coming back to his mouth, what will next?';
  String key1blank = '';
  late int _textLength;
  late int _index;
  late bool _isForward;
  Timer? timer;

  @override
  void initState() {
    _textLength = key1.length;
    _index = 0;
    _isForward = true;
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(_isForward){
        _index++;
        if(_index > _textLength){
          _index--;
          _isForward = false;
        }
      }
      setState(() {
        key1blank = key1.substring(0,_index);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text(''),
      leading: BackButton(color: Colors.black,),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],
    );

    double width = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;


    Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.warning_rounded,color: Colors.red,),
          title: Text('Do you want to exit the game?'),
          scrollable: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          actions: <Widget>[
            TextButton(
                onPressed: (){
                  Navigator.pop(context, false);
                },
                child: Text('No')
            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context, true);
                },
                child: Text('Yes')
            )
          ],
        )
    );

    return WillPopScope(
        onWillPop: () async{
          final shouldPop = await showWarning(context);

          return shouldPop ??false;
        },
    child: Scaffold(
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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 275,
              width: width,
              child: Image.asset(imageLink,fit: BoxFit.fill,),
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(key1blank,style: TextStyle(
                  fontSize: 18
              ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1)
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> afterwaitstop(),
                ));

              },
              child: Container(
                margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Wait for the seizure to stop",style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('You should never panic and shout'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Panic and shout",style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text("Rule No. 1 when a person having seizure, never force the seizure to the because it might cause bone injuries"),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Force the seizure to stop',style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

          ],
        ),
      ),
    )
    );
  }
}

class afterwaitstop extends StatefulWidget {
  const afterwaitstop({Key? key}) : super(key: key);

  @override
  State<afterwaitstop> createState() => _afterwaitstopState();
}

class _afterwaitstopState extends State<afterwaitstop> {

  String imageLink = 'assets/game/waitstop.png';

  String key1 = 'Now the seizure stop, what next?';
  String key1blank = '';
  late int _textLength;
  late int _index;
  late bool _isForward;
  Timer? timer;

  @override
  void initState() {
    _textLength = key1.length;
    _index = 0;
    _isForward = true;
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(_isForward){
        _index++;
        if(_index > _textLength){
          _index--;
          _isForward = false;
        }
      }
      setState(() {
        key1blank = key1.substring(0,_index);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text(''),
      leading: BackButton(color: Colors.black,),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],
    );

    double width = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;


    Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.warning_rounded,color: Colors.red,),
          title: Text('Do you want to exit the game?'),
          scrollable: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          actions: <Widget>[
            TextButton(
                onPressed: (){
                  Navigator.pop(context, false);
                },
                child: Text('No')
            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context, true);
                },
                child: Text('Yes')
            )
          ],
        )
    );

    return WillPopScope(
        onWillPop: () async{
          final shouldPop = await showWarning(context);

          return shouldPop ??false;
        },
    child: Scaffold(
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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 275,
              width: width,
              child: Image.asset(imageLink,fit: BoxFit.fill,),
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(key1blank,style: TextStyle(
                  fontSize: 18
              ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1)
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('You should never leave the student'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );

              },
              child: Container(
                margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Leave the student",style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      icon: Icon(Icons.info_rounded),
                      title: Text('Do not take any unnecessary actions in the middle of a emergency.'),
                      scrollable: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))
                      ),
                    )
                );
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Take a selfie with him',style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> afterlaycall(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Lay him down and call the ambulance',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,


                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    )
    );
  }
}

class afterlaycall extends StatefulWidget {
  const afterlaycall({Key? key}) : super(key: key);

  @override
  State<afterlaycall> createState() => _afterlaycallState();
}

class _afterlaycallState extends State<afterlaycall> {

  String imageLink = 'assets/game/layhim.png';

  String key1 = 'After few minutes, the ambulance arrived and the student thank you because you save his life. What will you say?';
  String key1blank = '';
  late int _textLength;
  late int _index;
  late bool _isForward;
  Timer? timer;

  @override
  void initState() {
    _textLength = key1.length;
    _index = 0;
    _isForward = true;
    timer = Timer.periodic(Duration(milliseconds: 50), (timer) {
      if(_isForward){
        _index++;
        if(_index > _textLength){
          _index--;
          _isForward = false;
        }
      }
      setState(() {
        key1blank = key1.substring(0,_index);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text(''),
      leading: BackButton(color: Colors.black,),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],
    );

    double width = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;


    Future<bool?> showWarning(BuildContext context) async => showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          icon: Icon(Icons.warning_rounded,color: Colors.red,),
          title: Text('Do you want to exit the game?'),
          scrollable: true,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15))
          ),
          actions: <Widget>[
            TextButton(
                onPressed: (){
                  Navigator.pop(context, false);
                },
                child: Text('No')
            ),
            TextButton(
                onPressed: (){
                  Navigator.pop(context, true);
                },
                child: Text('Yes')
            )
          ],
        )
    );

    return WillPopScope(
        onWillPop: () async{
          final shouldPop = await showWarning(context);

          return shouldPop ??false;
        },
    child: Scaffold(
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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 275,
              width: width,
              child: Image.asset(imageLink,fit: BoxFit.fill,),
            ),
            Container(
              width: width,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Text(key1blank,style: TextStyle(
                  fontSize: 18
              ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1)
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>end(),
                ));

              },
              child: Container(
                margin: EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("No problem",style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> end(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('Take care of yourself',style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=> end(),
                ));
              },
              child: Container(
                margin: EdgeInsets.only(right: 20,left: 20,bottom: 10),
                decoration: BoxDecoration(
                    color: Color(0xFFF1F1F1),
                    borderRadius: BorderRadius.circular(20)
                ),
                height: 75,
                width: width,
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text('You are welcome',style: TextStyle(
                  fontSize: 20,

                ),
                ),
              ),
            ),

          ],
        ),
      ),
    )
    );
  }
}

class end extends StatefulWidget {
  //const end({Key? key}) : super(key: key);

  @override
  State<end> createState() => _endState();
}

class _endState extends State<end> {
  @override
  Widget build(BuildContext context) {

    final appBar =  AppBar(
      title: const Text(''),
      leading: BackButton(color: Colors.black,),
      backgroundColor: Colors.transparent,
      bottomOpacity: 0.0,
      elevation: 0.0,
      actions: [
      ],
    );

    double width = MediaQuery.of(context).size.width;
    double heightHalf = MediaQuery.of(context).size.height/4;
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = appBar.preferredSize.height;
    final statusBarHeight = MediaQuery.of(context).padding.top;

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
      body: Container(
        height: screenHeight,
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text('Congratulations!',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),),
            ),
            Container(
              child: Text('You are now ready on any calamities',style: TextStyle(
                  fontSize: 18
              ),),
            ),
            Container(
              width: width,
              height:360,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/game/end.gif')
                  )
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);

              },
              child: Container(
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
              ),
            ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> gobag()));
              },
              child: Text('Review Procedure',style: TextStyle(
                  decoration:TextDecoration.underline
              ),
              ),
            )
          ],

        ),
      ),
    );
  }
}




