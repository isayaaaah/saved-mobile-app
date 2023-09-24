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
    "question": "Universal phone number to call for emergency purposes",
    "options": ['911', '161', '607', '117'],
    "answer_index": 0, //911
  },
  {
    "id": 1,
    "question": "Which of the following is not a symptom of flu?",
    "options": ['Fever',	'Cough', 	'Headache',	'Nosebleed'],
    "answer_index": 3, //Nosebleed
  },
  {
    "id": 2,
    "question":
    "It is a common condition that causes discomfort in the head or face",
    "options": ['Headache', 'Head Injury', 'Dizziness', 'Sore Throat'],
    "answer_index": 0, //Headache
  },
  {
    "id": 3,
    "question": "Can choking result in death, if not treated promptly?",
    "options": ['True', 'False', 'Maybe', 'It depends'],
    "answer_index": 0 //True,
  },
  {
    "id": 4,
    "question": "It is a viral infection that commonly starts like a cold that causes serious health risks, complications, and even death.",
    "options": ['Fever', 'Flu', 'Chickenpox', 'Headache'],
    "answer_index": 2, //Chickenpox
  },
  {
    "id": 5,
    "question": "In case of a disaster, you should have at least one gallon of stored drinking water per person in your household.",
    "options": ['True', 'False', 'Maybe', 'It depends'],
    "answer_index": 0, //True
  },
  {
    "id": 6,
    "question": "Which of the following does not require CPR for first aid?",
    "options": ['Heart Attack', 'Choking', 'Seizure', 'Cardiac Arrest'],
    "answer_index": 2, //Seizure
  },
  {
    "id": 7,
    "question": "It refers to a deep wound that is commonly caused by pointed and sharp objects",
    "options": ['Cut', 'Puncture', 'Laceration', 'Sprain'],
    "answer_index": 1, //Puncture
  },
  {
    "id": 8,
    "question": "What does R in PAR stands for?",
    "options": ['Ready',	'Responsibility',	'Responsible',	'Responsibilities'],
    "answer_index": 1, //Responsibility
  },
  {
    "id": 9,
    "question": "It is a critical condition due to a sudden drop of blood flow of the body.",
    "options": ['Choking', 'Seizure', 'Shock', 'Heart Attack'],
    "answer_index": 2, //Shock
  },

  {
    "id": 10,
    "question": "Which of the following is not used to remove splinters?",
    "options": ['Tweezers', 'Nail Cutter', 'Needle', 'Duct Tape'],
    "answer_index": 1, //Nail Cutter
  },
  {
    "id": 11,
    "question": "It refers to uncontrolled activity which causes irregularities in muscle tone or movements.",
    "options": ['Anaphylaxis',	'Seizure',	'Electric Shock',	'Heart Attack'],
    "answer_index": 1, //Seizure
  },
  {
    "id": 12,
    "question": "You can perform the Heimlich Maneuver on your own",
    "options": ['True', 'False', 'Maybe', 'It depends'],
    "answer_index": 0, //False
  },
  {
    "id": 13,
    "question": "Which of the following is not a phase of chickenpox?",
    "options": ['Red Bumps', 'Rashes', 'Crubs and Scabs', 'Flu'],
    "answer_index": 1, //Rashes
  },

  {
    "id": 14,
    "question": "Which of the following is not a possible cause of headache?",
    "options": ['Dehydration', 'Stress', 'Skipping Meals', 'Sprain'],
    "answer_index": 2, //Skipping Meals
  },
/*
  {
    "id": 15,
    "question": "Which of the following does not require CPR for first aid?",
    "options": ['Heart Attack', 'Choking', 'Seizure', 'Cardiac Arrest'],
    "answer_index": 2, //Seizure
  },
  {
    "id": 16,
    "question": "It usually happens when you have changes in your diet routine or due to insufficient intake of fiber in your body.",
    "options": ['Constipation', 'Diarrhea', 'Stomach Ache', 'Allergic Reaction'],
    "answer_index": 0, //Constipation
  },
  {
    "id": 17,
    "question": "It is medically known as 'dermatitis'.",
    "options": ['Rashes', 'Chickenpox', 'Acne', 'Cyst'],
    "answer_index": 0, //Rashes
  },
  {
    "id": 18,
    "question": "During a nosebleed, which position should you keep your head?",
    "options": ['Head Backwards', 'Head Level', 'Head Forwards', 'Head Sidewards'],
    "answer_index": 2, //Head Forwards
  },
  {
    "id": 19,
    "question": "It can be a partial or complete break of a bone in a persons body.",
    "options": ['Fracture', 'Sprain', 'Dislocation', 'Tear'],
    "answer_index": 0, //Fracture
  },
  {
    "id": 20,
    "question": "Which of the following should not be eaten by a person with a stomachache?",
    "options": ['Chicken', 'Meat', 'Fruits and Vegetables', 'Chips'],
    "answer_index": 2, //Fruits and Vegetables
  },
  {
    "id": 21,
    "question": "Which of the following items is important in a GO BAG",
    "options": ['Nail Polish', 'Powerbank', 'Photo Album', 'Toy'],
    "answer_index": 1, //Powerbank
  },
  {
    "id": 22,
    "question": "It is a traditional treatment for indigestion, gas, and diarrhea in Iran, Pakistan, and India",
    "options": ['Cheese', 'Mint', 'Butter', 'Chocolate'],
    "answer_index": 1, //Mint
  },
  {
    "id": 23,
    "question": "It causes bacterial infections of the soft tissues, bloodstream, and bones or skin due to an infection",
    "options": ['Hemorrhoids', 	'Sepsis',	'Encephalitis',	'Anaphylaxis'],
    "answer_index": 1, //Sepsis
  },
  {
    "id": 24,
    "question": "It refers to the swelling and inflammation of veins of the rectum",
    "options": ['Hemorrhoids', 	'Sepsis',	'Encephalitis',	'Anal Fissures'],
    "answer_index": 0, //Hemorrhoids
  },
  {
    "id": 25,
    "question": "What is the main goal when treating a fracture?",
    "options": ['Immobilise and support the fracture',	'Reduce shock',	'Prevent swelling',	'Reduce Itchiness'],
    "answer_index": 0, //Immobilise and support the fracture
  },
  {
    "id": 26,
    "question": "Which of the following is not a symptom of diarrhea?",
    "options": ['Flu',	'Fever',	'Nausea',	'Wheezing'],
    "answer_index": 3, //Wheezing
  },
  {
    "id": 27,
    "question": "It is a syndrome that can be acquired when you have chickenpox",
    "options": ["Williams Syndrome",	"Turner Syndrome", "Reye's Syndrome",	"Leigh Syndrome"],
    "answer_index": 2, //Reye's Syndrome
  },
  {
    "id": 28,
    "question": "Which of the following is not a type of common illnesses?",
    "options": ['Common Cold',	'Bleeding', 'Migraine',	'Headache'],
    "answer_index": 1, //Bleeding
  },
  {
    "id": 29,
    "question": "It is a bag packed with essential items and kept ready for use in case of an emergency.",
    "options": ['Go Bag',	'Survival kit',	'First Aid kit',	'Hygiene Kit'],
    "answer_index": 0, //Go Bag
  },
  {
    "id": 30,
    "question": "It's a climate phenomenon that demonstrates extraordinary surface water warming.",
    "options": ['El Niño',	'El Niña',	'La Niña',	'La Niño'],
    "answer_index": 0, //El Niño
  },
  {
    "id": 31,
    "question": "It's a weather phenomenon marked by unusually cold temperatures in the Equatorial Pacific, which led in a series of tropical storms in the Pacific.",
    "options": ['El Niño',	'El Niña',	'La Niño',	'La Niña'],
    "answer_index": 3, //La Niña
  },
  {
    "id": 32,
    "question": "Based on the classification of tropical cyclones by PAGASA, what does TD stands for?",
    "options": ['Tropical Depression',	'Tropical Duration',	'Tropical Disaster',	'Typhoon Disaster'],
    "answer_index": 0, //Tropical Depression
  },
  {
    "id": 33,
    "question": "What is the common symptom of having a heart attack?",
    "options": ['Cold sweat',	'Fever',	'Cough',	'Fainting'],
    "answer_index": 0, //Cold Sweat
  },
  {
    "id": 34,
    "question": "If someone is having a seizure, you should place something in their mouth to prevent them swallowing their tongue",
    "options": ['True', 'False', 'Maybe', 'It depends'],
    "answer_index": 0, //True
  },
  {
    "id": 35,
    "question": "You should seek medical attention immediately if you got hit by a shrapnel",
    "options": ['True', 'False', 'Maybe', 'It depends'],
    "answer_index": 0, //True
  },
*/
];
