import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:prototype1/models/saved.dart';
import 'package:prototype1/models/saved.dart';
import 'package:prototype1/models/user.dart';

class DatabaseService{

  final String uid;
  DatabaseService({required this.uid});

  //collection reference
  final CollectionReference savedCollection = FirebaseFirestore.instance.collection('saved');

  Future<void>createUserData(int scoreQuiz, int scoreGame) async {
    return await savedCollection.doc(uid).set({
      'scoreQuiz':scoreQuiz,
      'scoreGame':scoreGame,
    });
  }

  Future getUsersList() async{

    List itemsList =[];

    try{
      await savedCollection.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data());
        });
      });
      return itemsList;
    }catch(e){
      print(e.toString());
      return null;
    }
  }

  Future updateUserData(int scoreQuiz, int scoreGame) async {
    return await savedCollection.doc(uid).set({
      'scoreQuiz': scoreQuiz,
      'scoreGame': scoreGame
    });
  }
  
  //saved list from snapshot

  List<Saved> _savedListFromSnapshot(QuerySnapshot snapshot){

    return snapshot.docs.map((doc){
      return Saved(
          scoreQuiz: doc.get('scoreQuiz') ?? 0,
          scoreGame: doc.get('scoreGame') ?? 0
      );
    }).toList();


  }
  //userData from snapshot
  UserData _userDataFromSnapshot(DocumentSnapshot snapshot){
    return UserData(
      uid: uid,
      scoreQuiz: snapshot['scoreQuiz'],
      scoreGame: snapshot['scoreGame'],
    );
  }

  //get saved stream
  Stream<List<Saved>> get saved {
    return savedCollection.snapshots().map(_savedListFromSnapshot);

  }

  Stream<UserData> get userData {
    return savedCollection.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}

