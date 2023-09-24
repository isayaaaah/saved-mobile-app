import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class feedbackPage extends StatefulWidget {
  const feedbackPage({Key? key}) : super(key: key);

  @override
  State<feedbackPage> createState() => _feedbackPageState();
}

class _feedbackPageState extends State<feedbackPage> {

  final TextEditingController subjectController = new TextEditingController();
  final TextEditingController descController = new TextEditingController();

  @override
  void dispose(){
    subjectController.dispose();
    descController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    String? subject = '';
    String? desc = '';

    _fetchName() async{
      final firebaseUser = await FirebaseAuth.instance.currentUser;
      if(firebaseUser != null)
        await FirebaseFirestore.instance.collection('feedback').doc(firebaseUser.uid).get().then((ds) {
          subject = ds.data()!['subject'];
          desc = ds.data()!['description'];

        }).catchError((e){
          print(e);
        });
    }

    Color primaryColor = Color(0xFF06283D);


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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          child:  Padding(
            padding: const EdgeInsets.only(top: 5,left: 15,right: 15),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Feedback',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,

                  ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('Sending us feedback can help us to improve our application in the future for better use.'),
                ),
                TextFormField(
                  controller: subjectController,
                  decoration: InputDecoration(
                    hintText: 'Subject',
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide: BorderSide(color: primaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: descController,
                  minLines: 10,
                  maxLines: 20,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: 'Description',
                    hintStyle: TextStyle(
                        color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide:  BorderSide(color: primaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                ),
                FutureBuilder(
                  future: _fetchName(),
                  builder: (context,snapshot){
                    if(snapshot.connectionState != ConnectionState.done)
                      return Container(
                        margin: EdgeInsets.only(top: 30),
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            gradient: LinearGradient(
                                colors: [
                                  Color(0xFF525252),
                                  Color(0xFF858585)
                                ]
                            )
                        ),
                      );
                    return Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Center(
                          child: GestureDetector(
                            onTap: () async {

                              final currentUser = await FirebaseAuth.instance.currentUser;
                              final updateUser = FirebaseFirestore.instance
                                  .collection('feedback').doc(currentUser!.uid).set({
                                'subject': subjectController.text.trim(),
                                'description': descController.text.trim(),
                              });


                              print('haha');
                              print(subjectController.text);
                              if(subjectController.text == '' || descController.text == ''){
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      icon: Icon(Icons.error_rounded,color: Colors.red,),
                                      title: Text('Subject or Description is blank'),
                                      content: Text('Please fill the textfield'

                                      ),
                                      scrollable: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            child: Text('Okay'),)
                                      ],
                                    )
                                );
                              }else{
                                setState(() {
                                  subjectController.text ="";
                                  descController.text = "";
                                });
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      icon: Icon(Icons.check_circle,color: Colors.green,),
                                      title: Text('Feedback Submitted'),
                                      content: Text('Thank you for submitting your feedback, we will make sure that your response will be assist immediately.'

                                      ),
                                      scrollable: true,
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                      ),
                                      actions: <Widget>[
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('Done'),)
                                      ],
                                    )
                                );
                              }

                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              alignment: Alignment.center,
                              height: 60,
                              width: 150,
                              child: Text('Submit',style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ),
                          )
                      ),
                    );
                  },

                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
