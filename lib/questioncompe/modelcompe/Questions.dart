import 'dart:math';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

/*
void randomNum() {
  List<int> ranNum = [1,2,3,4,5];
  List<dynamic> newRanNum = sample_data.toSet().toList();
  newRanNum.shuffle();
  print(newRanNum.toString());

}
*/

const List sample_data = [

  {
    "id": 37,
    "question": "In emergency hotlines, what does the C in CDRRMC stands for?",
    "options": ['City', 'Coordination', 'Councils', 'Caloocan'],
    "answer_index": 0,
  },
{
"id": 1,
"question": "What does the C in ACL stands for?",
"options": ['Cranial', 'Chronic', 'Cruciate', 'Constant'],
"answer_index": 2,
},
{
"id": 2,
"question": "Which drug should be offered to a victim having a suspected heart attack?",
"options": ['Paracetamol', 'Aspirin', 'Epinephrine ', 'Acetaminophen'],
"answer_index": 1,
},
{
"id": 3,
"question": "It is also known as Myocardial Infarction",
"options": ['Heart Attack', 'Choking', 'Asthma', 'Fracture'],
"answer_index": 0,
},
{
"id": 4,
"question": "What is the best hotline to call in case of a fire in your building/home?",
"options": ['(02) 426-0219', '(02) 722-0650', '(02) 646-1633', '(02) 527-8481'],
"answer_index": 0,
},
{
"id": 5,
"question": "It is the other term for red bumps, one of the phase in chickenpox, that breaks out in several days",
"options": ['Papules', 'Blisters', 'Vesicles', 'Blain'],
"answer_index": 0,
},
{
"id": 6,
"question": "A 3-year-old children isn't feeling well. You notice they are not breathing and are blue in color. What are you going to do?",
"options": ['Do back blows.', 'Give 2 minutes of CPR.', 'Call 911.', 'Shout for help'],
"answer_index": 1,
},
{
"id": 7,
"question": "When putting your emergency kit together, what is the minimum number of days or hours your supplies should last?",
"options": ['2 days / 48 hours', '3 days / 72 hours', '4 days / 96 hours', '5 days / 120 hours'],
"answer_index": 1,
},
{
"id": 8,
"question": "It refers to the swelling and inflammation of veins of the rectum",
"options": ['Hemorrhoids', 'Anal Fissures', 'Diverticulitis', 'Rectum Fissures'],
"answer_index": 0,
},
{
"id": 9,
"question": "How long should you cleanse your eyes with water if chemicals have splashed into them?",
"options": ['Around 10 minutes', 'Around 5 minutes', 'Around 30 minutes', 'Around 20 minutes'],
"answer_index": 3,
},
{
"id": 10,
"question": "It refers to a deep wound that is commonly caused by pointed and sharp objects",
"options": ['Cut', 'Puncture', 'Laceration', 'Splinter'],
"answer_index": 1,
},
{
"id": 11,
"question": "It can be a partial or complete break of a bone in a persons body.",
"options": ['Fracture', 'Sprain', 'Dislocation', 'Tear'],
"answer_index": 0,
},
{
"id": 12,
"question": "Wind speed is less than 118 to 184 kph. What kind of typhoon is this? ",
"options": ['Typhoon', 'Tropical Depression', 'Super Typhoon', 'Tropical Storm'],
"answer_index": 0,
},
{
"id": 13,
"question": "Wind speed is greater than 185 kph. What kind of typhoon is this? ",
"options": ['Typhoon', 'Tropical Depression', 'Super Typhoon', 'Tropical Strom'],
"answer_index": 2,
},
{
"id": 14,
"question": "Which drug can help with the effects of anaphylaxis?",
"options": ['Paracetamol', 'Aspirin', 'Epinephrine', 'Acetaminophen'],
"answer_index": 2,
},
{
"id":15,
"question": "This burn affects the epidermis of the skin",
"options": ['1st degree burn', '2nd degree burn', '3rd degree burn', '4th degree burn'],
"answer_index": 0,
},
{
"id": 16,
"question": "What does the letter A in BRAT diet stands for?",
"options": ['Apple', 'Asin', 'Avocados', 'Applesauce'],
"answer_index": 3,
},
{
"id": 17,
"question": "It's a choking first aid technique, an emergency approach to assist someone who is choking due to food caught in the trachea.",
"options": ['Heimlich Maneuver', 'Chest compressions', 'CPR', 'Pat on the back'],
"answer_index": 0,
},
{
"id": 18,
"question": "Which of the following should you do when you have diarrhea",
"options": ['Drink plenty of coffee', 'Eat dairy foods', 'Drink plenty of water', 'Eat vegetables'],
"answer_index": 2,
},
{
"id": 19,
"question": "It refers to a small peck or line stuck under your skin which may cause infections if left untreated.",
"options": ['Scrape', 'Splinter', 'Puncture', 'Laceration'],
"answer_index": 1,
},
{
"id": 20,
"question": "It refers to a deep wound that is commonly caused by pointed and sharp objects",
"options": ['Scrape', 'Splinter', 'Puncture', 'Laceration'],
"answer_index": 2,
},
{
"id": 21,
"question": "It is a critical condition due to a sudden drop of blood flow of the body.",
"options": ['Choking', 'Seizure', 'Shock', 'Heart Attack'],
"answer_index": 2,
},
{
"id": 22,
"question": "It is a type of eruption that are caused by superheating of steam, when associated to magma, that causes granulation of existing rocks.",
"options": ['Phreatic eruptions', 'Magmatic eruptions', 'Premagmatic eruptions', 'Pyromagma Eruptions'],
"answer_index": 0,
},
{
"id": 23,
"question": "It is a type of fracture that does not cut through skin",
"options": ['Partial Fracture', 'Open Fracture', 'Closed Fracture', 'Initial Fracture'],
"answer_index": 2,
},
{
"id": 24,
"question": "It is a deep incision of your skin, often caused by mechanical tools or sharp items such as a knife or a shard of glass.",
"options": ['Cut', 'Laceration', 'Puncture', 'Splinter'],
"answer_index": 1,
},
{
"id": 25,
"question": "It is a syndrome that can be acquired when you have chickenpox",
"options": ['Williams Syndrome', 'Turner Syndrome', "Reye's Syndrome", 'Leigh Syndrome'],
"answer_index": 2,
},
{
"id": 26,
"question": "The person has pale or bluish skin color, cold skin, and dull or sunken eyes. These are symptoms of which health emergency?",
"options": ['Shock', 'Stroke', 'Heart Attack', 'Anaphylaxis'],
"answer_index": 0,
},
{
"id": 27,
"question": "It is a type of burn that affects both the epidermis and dermis which can cause redness, swelling and irregular spot on the skin.",
"options": ['1st degree burn', '2nd degree burn', '3rd degree burn', '4th degree burn'],
"answer_index": 1,
},
{
"id": 28,
"question": "It is a type of injury that occurs when the top layer of skin is scraped or rubbed off as a result of friction against the body.",
"options": ['Abrasions', 'Laceration', 'Cut', 'Scrape'],
"answer_index": 0,
},
{
"id": 29,
"question": "It refers to uncontrolled activity which causes irregularities in muscle tone or movements.",
"options": ['Anaphylaxis', 'Seizure', 'Electric Shock', 'Heart Attack'],
"answer_index": 1,
},
{
"id": 30,
"question": "Gloves must always be used when administering first aid.",
"options": ['True', 'False', 'Maybe', 'It depends'],
"answer_index": 1,
},
{
"id": 31,
"question": "Which of these is not an aim of first aid?",
"options": ['Preserve life', 'Promote recovery', 'Prevent worsening', 'Protect wounds'],
"answer_index": 3,
},
{
"id": 32,
"question": "It is caused by insufficient oxygen getting to the body's cells and tissues.",
"options": ['Shock', 'Heart Attack', 'Seizure', 'Epilepsy'],
"answer_index": 0,
},
{
"id": 33,
"question": "A heart attack and cardiac arrest are the same things",
"options": ['True', 'False', 'Maybe', 'It depends'],
"answer_index": 1,
},
{
"id": 34,
"question": "The pain from a heart attack only occurs in the centre of the chest",
"options": ['True', 'False', 'Maybe', 'It depends'],
"answer_index": 1,
},
  /*
{
"id": 35,
"question": "Which of the following is not a common illness?",
"options": ['Dermatitis', 'Constipation', 'Abrasion', 'Anaphylaxis'],
"answer_index": 2,
},
{
"id": 36,
"question": "Which of the following cities does not exist in the Philippines?",
"options": ['Digos City', 'El Salvador City', 'Catbalocan City', 'Lamitan City'],
"answer_index": 2,
},
{
"id": 37,
"question": "In emergency hotlines, what does the C in CDRRMC stands for?",
"options": ['City', 'Coordination', 'Councils', 'Caloocan'],
"answer_index": 0,
},
{
"id": 38,
"question": "Which region does Dagupan City located in the Philippines?",
"options": ['Region I', 'Region IV-A', 'Region IV-B', 'Region X'],
"answer_index": 0,
},*/
];
