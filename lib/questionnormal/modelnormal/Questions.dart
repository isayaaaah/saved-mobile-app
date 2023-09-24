import 'dart:math';

class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

void randomNum() {
  List<int> ranNum = [1,2,3,4,5];
  List<dynamic> newRanNum = sample_data.toSet().toList();
  newRanNum.shuffle();
  print(newRanNum.toString());

}


const List sample_data = [

{
"id": 0,
"question": "Which of the following is effective for most non-infectious rashes?",
"options": ['Cortisone Creams', 'Coconut Oil', 'Petroleum Jelly', 'Anthralin Paste'],
"answer_index": 0,
},
{
"id": 1,
"question": "MRE stands for?",
"options": ['Meal, Ready-to-Eat', 'Make, Ready and Eat', 'Meat Resources to Eat', 'Meat, Ready-to-Eat'],
"answer_index": 0,
},
{
"id": 2,
"question": "Wind speed is less than 118 to 184 kph. What kind of typhoon is this?",
"options": ['Typhoon', 'Tropical Depression', 'Super Typhoon', 'Super Typhoon'],
"answer_index": 0,
},
{
"id": 3,
"question": "Wind speed is greater than 185 kph. What kind of typhoon is this?",
"options": ['Typhoon', 'Tropical Depression', 'Super Typhoon', 'Tropical Storm'],
"answer_index": 2,
},
{
"id": 4,
"question": "The person has pale or bluish skin color, cold skin, and dull or sunken eyes. These are symptoms of which health emergency?",
"options": ['Shock', 'Stroke', 'Heart Attack', 'Anaphylaxis'],
"answer_index": 0,
},
{
"id": 5,
"question": "When putting your emergency kit together, what is the minimum number of days or hours your supplies should last?",
"options": ['2 days / 48 hours', '3 days / 72 hours', '4 days / 96 hours', '5 days / 120 hours'],
"answer_index": 1,
},
{
"id": 6,
"question": "Is shortness of breath a sign of heart attack?",
"options": ['True', 'False', 'Maybe', 'It depends'],
"answer_index": 0,
},
{
"id": 7,
"question": "It is a type of burn that affects both the epidermis and dermis which can cause redness, swelling and irregular spot on the skin.",
"options": ['Sunburn', '1st degree burn', '2nd degree burn', '3rd degree burn'],
"answer_index": 2,
},
{
"id": 8,
"question": "What speed of chest compressions should you aim for?",
"options": ['90-110 a minute', '100-120 a minute', '110-130 a minute', '120-140 a minute'],
"answer_index": 1,
},
{
  "id": 9,
  "question": "In case of an emergency situation, who is the most important person?",
  "options": ['EMS', 'Yourself', 'The injured person', 'Nobody'],
  "answer_index": 1,
},
{
"id": 10,
"question": "What's the worst thing you can apply to your skin if you get sunburned?",
"options": ['Moisturizing Lotion', 'Aloe Vera Gel', 'Petroleum Jelly', 'Calamine Lotion'],
"answer_index": 2,
},
{
"id": 11,
"question": "What is a common complication of constipation?",
"options": ['Infection', 'Cold sweats', 'Hemorrhoids', 'Low grade fever'],
"answer_index": 2,
},
{
"id": 12,
"question": "It is the most severe type of allergic reaction",
"options": ['Rashes', 'Anaphylaxis', 'Seizure', 'Redness of face'],
"answer_index": 1,
},
{
"id": 13,
"question": "It happens when your foot turns inward as you land or turn on the ankle",
"options": ['Knee Sprain', 'Wrist Sprain', 'Ankle Sprain', 'Toe Sprain'],
"answer_index": 2,
},
{
"id": 14,
"question": "It refers to the swelling and inflammation of veins of the rectum",
"options": ['Hemorrhoids', 'Anal Fissures', 'Diverticulitis', 'Rectum Fissures'],
"answer_index": 0,
},
{
"id": 15,
"question": "It is a type of injury that occurs when the top layer of skin is scraped or rubbed off as a result of friction against the body.",
"options": ['Abrasions', 'Laceration', 'Cut', 'Bleeding'],
"answer_index": 0,
},
{
"id": 16,
"question": "You can use an automated external defibrillator if a victim is on a metal surface",
"options": ['True', 'False', 'Maybe', 'It depends'],
"answer_index": 0,
},
{
"id": 17,
"question": "Should you put important documents like government issued ids inside your Go Bag?",
"options": ['True', 'False', 'Maybe', 'It depends'],
"answer_index": 0,
},
{
"id": 18,
"question": "The following are types of natural disaster EXCEPT:",
"options": ['El Nino', 'La Nina', 'El Nina', 'None of the Above'],
"answer_index": 2,
},
{
"id": 19,
"question": "It refers to uncontrolled activity which causes irregularities in muscle tone or movements.",
"options": ['Anaphylaxis', 'Seizure', 'Electric Shock', 'Heart Attack'],
"answer_index": 1,
},
{
"id": 20,
"question": "Which kind of painkiller can help relieve pain and alleviate swelling at the same time?",
"options": ['Aspirin', 'Ibuprofen', 'Naproxen', 'Phenylephrine'],
"answer_index": 1,
},
{
"id": 21,
"question": "What is the main goal when treating a fracture?",
"options": ['Reduce Itchiness', 'Reduce shock', 'Prevent swelling', 'Immobilise the fracture'],
"answer_index": 3,
},
{
"id": 22,
"question": "It is a type of burn that affects that can cause numbness and destroy the nerves on the body.",
"options": ['Sunburn', '1st degree burn', '2nd degree burn', '3rd degree burn'],
"answer_index": 3,
},
{
"id": 23,
"question": "It is the result of physical and chemical changes of geological forces on rocks and adjoining plates.",
"options": ['Chemical earthquake', 'Collapse earthquake', 'Explosion earthquake', 'Tectonic earthquake'],
"answer_index": 3,
},
{
"id": 24,
"question": "It causes bacterial infections of the soft tissues, bloodstream, and bones or skin due to an infection",
"options": ['Hemorrhoids ', 'Sepsis', 'Encephalitis', 'Anaphylaxis'],
"answer_index": 1,
},
/*
{
"id": 25,
"question": "Which of the following should be avoided if you have rashes?",
"options": ['Skin care lotions', 'Petroleum jelly', 'Antihistamine medication', 'Using of bar soaps'],
"answer_index": 3,
},
{
"id": 26,
"question": "It is a type of eruption that are caused by superheating of steam, when associated to magma, that causes granulation of existing rocks.",
"options": ['Phreatic eruptions', 'Magmatic eruptions', 'Phreatomagmatic eruptions', 'Pyromagma Eruptions'],
"answer_index": 0,
},
{
"id": 37,
"question": "It is a small earthquake caused by explosions of rock on the surface that produces seismic waves in underground caverns and mines.",
"options": ['Tectonic earthquake', 'Collapse earthquake', 'Explosion earthquake', 'Groundquake'],
"answer_index": 1,
},
{
"id": 28,
"question": "In case of an emergency situation, who is the most important person?",
"options": ['EMS', 'Yourself', 'The injured person', 'Nobody'],
"answer_index": 1,
},
{
"id": 29,
"question": "A three-year-old children isn't feeling well and then lays down for a nap. You notice they are not breathing and are blue in color. What would be the best step to take?",
"options": ['Do back blows.', 'Deliver 2 minutes CPR.', 'Call 911.', 'Panic'],
"answer_index": 1,
},
{
"id": 30,
"question": "Which drug can help with the effects of anaphylaxis?",
"options": ['Paracetamol', 'Aspirin', 'Epinephrine ', 'Acetaminophen'],
"answer_index": 2,
},
{
"id": 31,
"question": "This burn affects the epidermis of the skin",
"options": ['Sunburn', '1st degree burn', '2nd degree burn', '3rd degree burn'],
"answer_index": 1,
},
{
"id": 32,
"question": "It is also known as Simple Fracture",
"options": ['Partial Fracture', 'Open Fracture', 'Minor Fracture', 'Closed Fracture'],
"answer_index": 3,
},
{
"id": 33,
"question": "If someone is having a seizure, you should NOT place something in their mouth to prevent them swallowing their tongue",
"options": ['True', 'False', 'Maybe', 'It depends'],
"answer_index": 1,
},
{
"id": 34,
"question": "Tropical Cyclones does not need water vapor to form.",
"options": ['True', 'False', 'Maybe', 'It depends'],
"answer_index": 1,
},
{
"id": 35,
"question": "Which of the following is used for cough remedy?",
"options": ['Peanuts', 'Blue Cheese', 'Ginger', 'Orange'],
"answer_index": 2,
},
{
"id": 36,
"question": "It's a choking first aid technique, an emergency approach to assist someone who is choking due to food caught in the trachea.",
"options": ['Heimlich Maneuver', 'Chest Compressions', 'CPR', 'Pat on the back'],
"answer_index": 0,
},
{
"id": 37,
"question": "Which type of tear can be assessed by a Physical Therapist?",
"options": ['Intense Tears', 'Basal Tears', 'Severe Tears', 'Partial Tears'],
"answer_index": 3,
},
{
"id": 38,
"question": "It refers to a small peck or line stuck under your skin which may cause infections if left untreated.",
"options": ['Scrape', 'Splinter', 'Puncture', 'Laceration'],
"answer_index": 1,
},
{
"id": 39,
"question": "It refers to a deep wound that is commonly caused by pointed and sharp objects",
"options": ['Scrape', 'Splinter', 'Puncture', 'Laceration'],
"answer_index": 2,
},
{
"id": 40,
"question": "Which of the following is not a phase of chickenpox",
"options": ['Red Bumps', 'Rashes', 'Crusts and Scabs', 'Fever'],
"answer_index": 1,
},
{
"id": 41,
"question": "It's a powerful circular cyclone with low air pressure, strong winds, and heavy rain that forms over warm tropical oceans.",
"options": ['Storm', 'Rain', 'Landslide', 'Typhoon'],
"answer_index": 3,
},
{
"id": 42,
"question": "Which of the following is not a common cause of shock?",
"options": ['Severe Infections', 'Heatstroke', 'Choking', 'None'],
"answer_index": 2,
},
{
"id": 43,
"question": "It is also known as Abdominal Thrusts",
"options": ['Hymelich Maneuver', 'Helmlich Maneuver', 'Heimlich Maneuver', 'Heimlich Technique'],
"answer_index": 2,
},
{
"id": 44,
"question": "It is a viral disease that infects the central nervous system resulting to brain diseases and even death",
"options": ['Rabies', 'Anaphylaxis', 'Allergy', 'Fever'],
"answer_index": 0,
},
{
"id": 45,
"question": "It is a type of fracture that does not cut through skin",
"options": ['Partial Fracture', 'Open Fracture', 'Closed Fracture', 'Initial Fracture'],
"answer_index": 2,
},
{
"id": 46,
"question": "It is a deep incision of your skin, often caused by mechanical tools or sharp items such as a knife or a shard of glass.",
"options": ['Cut', 'Laceration', 'Puncture', 'Splinter'],
"answer_index": 1,
},
{
"id": 47,
"question": "Which of the following is not a type of earthquake?",
"options": ['Tectonic Earthquake', 'Explosion Earthquake', 'Oceanic Earthquake', 'None'],
"answer_index": 2,
},*/
];
