import 'package:flutter/material.dart';
import 'package:prototype1/screens/home/contents.dart';
import 'package:prototype1/screens/home/contentsreal.dart';


class searchBar extends StatefulWidget {
  //const searchBar2({Key? key}) : super(key: key);

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {

  final controller = TextEditingController();
  List<Injury> injuries = allInjury;


  Color primaryColor = Color(0xFF06283D);
  Color secondColor = Color(0xFF256D85);
  Color tertiaryColor = Color(0xFF47B5FF);
  Color subColor = Color(0xFFDFF6FF);

  @override
  Widget build(BuildContext context) => Scaffold(

    appBar: AppBar(
      title: Text('Search'),
      backgroundColor: primaryColor,
      bottomOpacity: 0.0,
      elevation: 0.0,

    ),
    body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: controller,
              style: TextStyle(
                  color:primaryColor
              ),
              autofocus: true,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () {
                      controller.clear();
                    },
                    icon:Icon(Icons.close,color:primaryColor,),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                          color:primaryColor
                      )
                  ),
                  prefixIcon: Icon(Icons.search,color:primaryColor,),
                  hintText: 'Type',

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(

                          color:primaryColor
                      )
                  )
              ),
              onChanged: searchInjury,
            ),

          ),
          Expanded(
            child: ListView.builder(
                itemCount: injuries.length,
                itemBuilder: (context,index){
                  final injury = injuries[index];

                  return ListTile(
                    title: Text(injury.title,
                    ),
                    onTap: () {
                      if(injury.title == "Cut / Scrape"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cut(injury: injury)));
                      }
                      else if(injury.title == "Burn"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => burn(injury: injury)));
                      }
                      else if(injury.title == "Splinter"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => splinter(injury: injury)));
                      }
                      else if(injury.title == "Insect Bite / Sting"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => insect(injury: injury)));
                      }
                      else if(injury.title == "Sunburn"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => sunburn(injury: injury)));
                      }
                      else if(injury.title == "Nosebleed"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => nosebleed(injury: injury)));
                      }
                      else if(injury.title == "Choking"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => choking(injury: injury)));
                      }
                      else if(injury.title == "Drowning"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => drowning(injury: injury)));
                      }
                      else if(injury.title == "Electric Shock"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => electricshock(injury: injury)));
                      }
                      else if(injury.title == "Heart Attack"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => heartattack(injury: injury)));
                      }
                      else if(injury.title == "Shrapnel"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => shrapnel(injury: injury)));
                      }
                      else if(injury.title == "Head Injury"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => headinjury(injury: injury)));
                      }
                      else if(injury.title == "Seizure"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => seizure(injury: injury)));
                      }
                      else if(injury.title == "Rabies"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => rabies(injury: injury)));
                      }
                      else if(injury.title == "Cold"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => commoncold(injury: injury)));
                      }
                      else if(injury.title == "Cough"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cough(injury: injury)));
                      }
                      else if(injury.title == "Flu"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => flu(injury: injury)));
                      }
                      else if(injury.title == "Headache"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => headache(injury: injury)));
                      }
                      else if(injury.title == "Diarrhea"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => diarrhea(injury: injury)));
                      }
                      else if(injury.title == "Allergic Reaction"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => allergicreaction(injury: injury)));
                      }
                      else if(injury.title == "Stomachache"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => stomachache(injury: injury)));
                      }
                      else if(injury.title == "Chicken Fox / Chickenpox"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => chickenpox(injury: injury)));
                      }
                      else if(injury.title == "Constipation"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => constipation(injury: injury)));
                      }
                      else if(injury.title == "Rashes"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => rashes(injury: injury)));
                      }
                      else if(injury.title == "Hand, Foot, and Mouth Disease"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => handfootmouth(injury: injury)));
                      }
                      else if(injury.title == "Sore Eyes"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => soreeyes(injury: injury)));
                      }
                      else if(injury.title == "Asthma"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => asthma(injury: injury)));
                      }
                      else if(injury.title == "Fractures"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => fractures(injury: injury)));
                      }
                      else if(injury.title == "Sprains / Strains"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => sprain(injury: injury)));
                      }
                      else if(injury.title == "Tears"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => tear(injury: injury)));
                      }
                      else if(injury.title == "Dislocation"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => dislocation(injury: injury)));
                      }
                      else if(injury.title == "Limp"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => limp(injury: injury)));
                      }
                      else if(injury.title == "Gunpowder"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => gunpowder(injury: injury)));
                      }
                      else if(injury.title == "Detergent"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => detergent(injury: injury)));
                      }
                      else if(injury.title == "Bleach"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => bleach(injury: injury)));
                      }
                      else if(injury.title == "Soap / Shampoo"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => soapshampoo(injury: injury)));
                      }
                      else if(injury.title == "Rubbing Alcohol"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => rubbingalcohol(injury: injury)));
                      }
                      else if(injury.title == "Cardiopulmonary resuscitation (CPR)"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => cpr(injury: injury)));
                      }
                      else if(injury.title == "Heimlich Maneuver"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => heimlich(injury: injury)));
                      }
                      else if(injury.title == "Rest, Ice, Compression, Elevation (RICE)"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ricemethod(injury: injury)));
                      }
                      else if(injury.title == "Typhoon"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => typhoon(injury: injury)));
                      }
                      else if(injury.title == "Earthquake"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => earthquake(injury: injury)));
                      }
                      else if(injury.title == "Volcanic Eruption"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => volcaniceruption(injury: injury)));
                      }
                      else if(injury.title == "Landslide"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => landslide(injury: injury)));
                      }
                      else if(injury.title == "El Niño"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => elnino(injury: injury)));
                      }
                      else if(injury.title == "La Niña"){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => lanina(injury: injury)));
                      }




                    },
                  );
                }),
          ),
        ],
      ),

  );
  void searchInjury(String query){
    final suggestions = allInjury.where((injury){
      final injuryTitle = injury.title.toLowerCase();
      final input = query.toLowerCase();

      return injuryTitle.contains(input);
    }).toList();

    setState(() => injuries = suggestions);
  }
}


class bodySearch extends StatelessWidget {
  //const bodySearch({Key? key}) : super(key: key);
  final controller = TextEditingController();
  List<Injury> injuries = allInjury;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: injuries.length,
          itemBuilder: (context,index){
            final injury = injuries[index];

            return ListTile(
              title: Text(injury.title),
            );
          }),
    );
  }
}


class Injury{
  final String title;

  const Injury({
    required this.title
  });
}

const allInjury = [
  Injury(title: 'Cut / Scrape'),
  Injury(title: 'Burn'),
  Injury(title: 'Splinter'),
  Injury(title: 'Insect Bite / Sting'),
  Injury(title: 'Sunburn'),
  Injury(title: 'Nosebleed'),
  Injury(title: 'Choking'),
  Injury(title: 'Drowning'),
  Injury(title: 'Electric Shock'), 
  Injury(title: 'Heart Attack'),
  Injury(title: 'Shrapnel'),
  Injury(title: 'Head Injury'),
  Injury(title: 'Seizure'),
  Injury(title: 'Rabies'),
  Injury(title: 'Cold'),
  Injury(title: 'Cough'),
  Injury(title: 'Flu'),
  Injury(title: 'Headache'),
  Injury(title: 'Diarrhea'),
  Injury(title: 'Allergic Reaction'),
  Injury(title: 'Stomachache'),
  Injury(title: 'Chicken Fox / Chickenpox'),
  Injury(title: 'Constipation'),
  Injury(title: 'Rashes'),
  Injury(title: 'Hand, Foot, and Mouth Disease'),
  Injury(title: 'Sore Eyes'),
  Injury(title: 'Asthma'),
  Injury(title: 'Fractures'),
  Injury(title: 'Sprains / Strains'),
  Injury(title: 'Tears'),
  Injury(title: 'Dislocation'),
  Injury(title: 'Limp'),
  Injury(title: 'Gunpowder'),
  Injury(title: 'Detergent'),
  Injury(title: 'Bleach'),
  Injury(title: 'Soap / Shampoo'),
  Injury(title: 'Rubbing Alcohol'),
  Injury(title: 'Cardiopulmonary resuscitation (CPR)'),
  Injury(title: 'Rest, Ice, Compression, Elevation (RICE)'),
  Injury(title: 'Heimlich Maneuver'),
  Injury(title: 'Typhoon'),
  Injury(title: 'Earthquake'),
  Injury(title: 'Volcanic Eruption'),
  Injury(title: 'Landslide'),
  Injury(title: 'El Niño'),
  Injury(title: 'La Niña'),

];
