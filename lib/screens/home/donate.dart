import 'package:flutter/material.dart';

class donatePage extends StatelessWidget {
  const donatePage({Key? key}) : super(key: key);

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

        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                child: Text('Donate to SAVED',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),
                ),
              ),
              Container(
                child: Text('Donating to SAVED can help the developers to maintain the application expenses such as the database server. '
                    'Any amount will be appreciated, Thank you!'),
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Image.asset('assets/gcash.png',width: 150,),
                    ),
                    Container(
                      child: Image.asset('assets/donate.png',width: 250),
                      padding: EdgeInsets.only(bottom: 20),
                    ),
                    Row(children: <Widget>[
                      Expanded(
                        child: new Container(
                            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                      Text("OR"),
                      Expanded(
                        child: new Container(
                            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                            child: Divider(
                              color: Colors.black,
                              height: 36,
                            )),
                      ),
                    ]
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text('0919 325 4843',style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),
                      ),
                    ),
                    Container(
                      child: Text('Isiah Esporton',style: TextStyle(
                          fontSize: 15,

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
    );
  }
}
