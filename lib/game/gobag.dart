import 'dart:async';

import 'package:flutter/material.dart';
import 'package:prototype1/screens/home/contentsreal.dart';

class gobagGame extends StatefulWidget {
  const gobagGame({Key? key}) : super(key: key);

  @override
  State<gobagGame> createState() => _gobagGameState();
}

class _gobagGameState extends State<gobagGame> {
  String imageLink = 'assets/game/scene1.png';

  String key1 = 'As a preparation for a super typhoon incoming you decided to prepare a bag. What bag should you prepare for the typhoon?';
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
                        title: Text('Not the correct bag for disaster preparedness.'),
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
                  child: Text('School Bag',style: TextStyle(
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
                  child: Text('Eco Bag',style: TextStyle(
                    fontSize: 20,

                  ),
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> gobagScreen(),));

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
                  child: Text('Go-Bag',style: TextStyle(
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

class gobagScreen extends StatefulWidget {
  const gobagScreen({Key? key}) : super(key: key);

  @override
  State<gobagScreen> createState() => _gobagScreenState();
}

class _gobagScreenState extends State<gobagScreen> {
  String imageLink = 'assets/game/nearhim.png';

  String key1 = 'Correct! GO Bag is used for disaster preparedness such as in typhoons. You'
      'are now thinking of items to put, which of the items given should you pack in the bag?';
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> afterfirstaidtoolkit(),));
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
                    child: Text("First aid kit ",style: TextStyle(
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
                          title: Text("Not necessary"),

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
                    child: Text('Utensils Kit',style: TextStyle(
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
                          title: Text("The only tool that is needed for a GO Bag is the multitool and a small survival knife. First Aid"
                              " kit is the most important kit."),

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
                        'Tool kit',
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

class afterfirstaidtoolkit extends StatefulWidget {
  const afterfirstaidtoolkit({Key? key}) : super(key: key);

  @override
  State<afterfirstaidtoolkit> createState() => _afterfirstaidtoolkitState();
}

class _afterfirstaidtoolkitState extends State<afterfirstaidtoolkit> {
  String imageLink = 'assets/game/nearhim.png';

  String key1 = 'Correct! First aid is needed as you never know what injuries or wounds you will get in a disaster.'
      'To know the components of a First Aid Kit, go to (directory papuntang first aid kit module). What item is next?';
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
                          title: Text('Frozen Meat and Vegetables are not recommended to be in a GO bag'),
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
                    child: Text("Frozen Meat, Vegetables, and Water",
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
                          title: Text("Package/Packed foods still needs equipment's "
                              "in order to be cooked."),

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
                    child: Text('Package/Packed Foods and Water',
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> aftermre(),));
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
                        'Canned Food/MRE and Water',
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

class aftermre extends StatefulWidget {
  const aftermre({Key? key}) : super(key: key);

  @override
  State<aftermre> createState() => _aftermreState();
}

class _aftermreState extends State<aftermre> {
  String imageLink = 'assets/game/nearhim.png';

  String key1 = 'Correct! MRE and Canned Food are ready to eat when there is no electrivity or for survival'
      'such as in a typhoon. What item is next?';
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> afterclothes(),));
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
                    child: Text("Clothes",style: TextStyle(
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
                          title: Text("It will not fit in a Go Bag"),

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
                    child: Text('Pillow and Blanket',style: TextStyle(
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
                          title: Text("If you have any accessories that is important, you can also include it but clothes should be the priority."),

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
                        'Accessories',
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

class afterclothes extends StatefulWidget {
  const afterclothes({Key? key}) : super(key: key);

  @override
  State<afterclothes> createState() => _afterclothesState();
}

class _afterclothesState extends State<afterclothes> {
  String imageLink = 'assets/game/nearhim.png';

  String key1 = 'Correct! Some clothes especially house clothes should also be included in Go-Bag. What item is next?';
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> aftermobile(),));
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
                    child: Text("Mobile Phone and Powerbank",style: TextStyle(
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
                          title: Text("It is not possible to contact anyone when a telephone is in the GO Bag"),

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
                    child: Text('Telephone',style: TextStyle(
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
                          title: Text("It will not fit in a GO Bag"),

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
                        'Computer',
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

class aftermobile extends StatefulWidget {
  const aftermobile({Key? key}) : super(key: key);

  @override
  State<aftermobile> createState() => _aftermobileState();
}

class _aftermobileState extends State<aftermobile> {
  String imageLink = 'assets/game/nearhim.png';

  String key1 = 'Correct! Mobile Phone is important to contact emergency hotlines or to contact your family. While a power bank'
      ' is needed when your phone is low on battery, if you have a pet, what item should it be?';
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
                          title: Text("Not necessary in a Go-Bag"),

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
                    child: Text("Pet clothes",style: TextStyle(
                      fontSize: 20,

                    ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> afterpetfood(),));
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
                    child: Text('Pet food',style: TextStyle(
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
                          title: Text("Not necessary in a Go-Bag"),

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
                        'Toys for pets',
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

class afterpetfood extends StatefulWidget {
  const afterpetfood({Key? key}) : super(key: key);

  @override
  State<afterpetfood> createState() => _afterpetfoodState();
}

class _afterpetfoodState extends State<afterpetfood> {
  String imageLink = 'assets/game/nearhim.png';

  String key1 = 'Correct! Pet food is important if you have a pet. What items should also be included?';
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> endGobag(),));
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
                    child: Text("Cash and important IDs or documents",
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
                          title: Text("It can be replaced and bought again"),

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
                    child: Text('Kitchen Utensils',style: TextStyle(
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
                          title: Text("It can be replaced and bought again"),

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
                        'Toys',
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

class endGobag extends StatefulWidget {
  //const end({Key? key}) : super(key: key);

  @override
  State<endGobag> createState() => _endGobagState();
}

class _endGobagState extends State<endGobag> {
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
