import 'package:flutter/material.dart';
import 'package:prototype1/models/user.dart';
import 'package:prototype1/screens/authenticate/loginScreen.dart';
import 'package:provider/provider.dart';

import 'home/home.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    print(user);

    if (user == null){
      return LoginScreen();
    }else{
      return Home();
    }
  }
}

