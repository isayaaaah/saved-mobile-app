import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prototype1/screens/home/contentsreal.dart';

class chokingGame extends StatefulWidget {
  const chokingGame({Key? key}) : super(key: key);

  @override
  State<chokingGame> createState() => _chokingGameState();
}

class _chokingGameState extends State<chokingGame> {

  String imageLink = 'assets/game/scene1.png';

  String key1 = 'You are eating lunch by yourself and you started to choke on the food that you are eating. What will be your immediate move?';
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
                    builder: (context)=> afteraskhelp(),
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
                  child: Text('Try to ask for help if there is somebody around',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 20,

                  ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> afterperform(),
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
                  child: Text('Perform the Heimlich Maneuver by yourself',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                        title: Text('Not the right decision as you will be in a state of panic and needs immediate help.'),
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
                  child: Text('Call 911',style: TextStyle(
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

class afteraskhelp extends StatefulWidget {
  const afteraskhelp({Key? key}) : super(key: key);

  @override
  State<afteraskhelp> createState() => _afteraskhelpState();
}

class _afteraskhelpState extends State<afteraskhelp> {

  String imageLink = 'assets/game/scene1.png';

  String key1 = 'You saw somebody and he immediately tried to help you, but he also does now know what to do. What will be your next action?';
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
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        icon: Icon(Icons.info_rounded),
                        title: Text("You can't tell him as you can't talk"),
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
                  child: Text('Try to tell him to open the SAVED app',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 20,

                  ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> afterperform(),
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
                  child: Text('Try to do it yourself',style: TextStyle(
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
                        title: Text('Not the right thing to do'),
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
                  child: Text('Punch him out of panic',style: TextStyle(
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

class afterperform extends StatefulWidget {
  const afterperform({Key? key}) : super(key: key);

  @override
  State<afterperform> createState() => _afterperformState();
}

class _afterperformState extends State<afterperform> {
  String imageLink = 'assets/game/scene1.png';

  String key1 = 'What will be the first step?';
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
                    builder: (context)=> afterfist(),
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
                  child: Text('Make a fist and place it a few inches over your navel',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                        title: Text('It will not work'),
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
                  child: Text('Tap your body rapidly',style: TextStyle(
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
                        title: Text('Wrong move'),
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
                  child: Text('Cough until the food comes out',style: TextStyle(
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

class afterfist extends StatefulWidget {
  const afterfist({Key? key}) : super(key: key);

  @override
  State<afterfist> createState() => _afterfistState();
}

class _afterfistState extends State<afterfist> {
  String imageLink = 'assets/game/scene1.png';

  String key1 = 'What will be the second step?';
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
                    builder: (context)=> aftersecondstep(),
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
                  child: Text('Bend over a hard surface, such as a countertop or a chair and grasp your fist with the opposite hand',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                        title: Text('Bending over a soft surface will not do it and holding your fist is the wrong move.'),
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
                  child: Text('Bend over a soft surface, such as a pillow or bag and hold your fist with the opposite hand.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                        title: Text('Lying down over a hard surface is not the correct way and grasping your fist with the same hand is not possible.'),
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
                  height: 100,
                  width: width,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text('Lie down over a hard surface, such as a countertop or a chair and grasp your fist with the same hand.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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

class aftersecondstep extends StatefulWidget {
  const aftersecondstep({Key? key}) : super(key: key);

  @override
  State<aftersecondstep> createState() => _aftersecondstepState();
}

class _aftersecondstepState extends State<aftersecondstep> {
  String imageLink = 'assets/game/scene1.png';

  String key1 = 'What will be the third step?';
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

                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        icon: Icon(Icons.info_rounded),
                        title: Text('Bending over a soft surface will not do it and holding your fist is the wrong move.'),
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
                  child: Text('Punch your stomach repeatedly until it comes out.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontSize: 20,

                  ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=> preendchoking(),
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
                  child: Text('Shove your fist inward and upward until it comes out',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
                        title: Text('Incorrect step'),
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
                  child: Text('Massage your body with your fist',style: TextStyle(
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

class preendchoking extends StatefulWidget {
  const preendchoking({Key? key}) : super(key: key);

  @override
  State<preendchoking> createState() => _preendchokingState();
}

class _preendchokingState extends State<preendchoking> {
  String imageLink = 'assets/game/scene1.png';

  String key1 = 'You have successfully did the Heimlich Maneuver by yourself and the food came out. What will you do now?';
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
                    builder: (context)=> endchoking(),
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
                  child: Text('Rest First',style: TextStyle(
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
                        title: Text('Try to rest first before eating again'),
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
                  child: Text('Continue eating immediately',style: TextStyle(
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
                        title: Text('Do not waste food'),
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
                  child: Text('Throw your food away',style: TextStyle(
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

class endchoking extends StatefulWidget {
  const endchoking({Key? key}) : super(key: key);

  @override
  State<endchoking> createState() => _endchokingState();
}

class _endchokingState extends State<endchoking> {
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
              child: Text('You did the Heimlich Maneuver',style: TextStyle(
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
                    builder: (context)=> chokingReal()));
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



