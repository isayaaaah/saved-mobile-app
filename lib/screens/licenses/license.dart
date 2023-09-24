import 'package:flutter/material.dart';

class licensePage extends StatelessWidget {
  const licensePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: LicensePage(
        applicationName: "SAVED",
        applicationIcon: Padding(
          padding: EdgeInsets.symmetric(vertical: 15),
            child: Image.asset("assets/logo.png",height: 70,width: 70,)),
        applicationVersion: "1.0.0",
        applicationLegalese: "Copyright ${DateTime.now().year} SAVED",
      ),
    );
  }
}
