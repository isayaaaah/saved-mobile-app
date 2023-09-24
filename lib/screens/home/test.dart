import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Video{
  final String name;
  final String url;
  final String thumbnail;
  final String author;

  const Video({
    required this.name,
    required this.url,
    required this.thumbnail,
    required this.author
});
}

const videos = [
  Video(
      name: 'CPR (Infant)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F1%20How%20to%20perform%20CPR%20on%20an%20infant.mp4?alt=media&token=77528aaa-1580-461f-9e6b-d39a0047da2d',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: 'By Touch Medical Media Service'
  ),
  Video(
      name: 'CPR (Infant)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F2%20CPR%20for%20Infants%20(Newborn%20to%201%20Year).mp4?alt=media&token=1fa99d8a-2601-45e9-8434-477ce0cdf45b',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Cincinnati Children's"
  ),
  Video(
      name: 'CPR (Child)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F3%20How%20to%20perform%20CPR%20on%20a%20child.mp4?alt=media&token=cf4b1bd4-a9b5-43cc-9dec-ed66b8518ec6',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: 'By Touch Medical Media Service'
  ),
  Video(
      name: 'CPR (Child)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F4%20How%20to%20do%20CPR%20on%20a%20Child%20(Ages%201%20to%2012%20Years).mp4?alt=media&token=4b72ca17-5206-4004-ba8e-64f77bf37af2',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Cincinnati Children's"
  ),
  Video(
      name: 'CPR (Adult)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F5%20How%20to%20perform%20CPR%20on%20an%20adult.mp4?alt=media&token=3f35ef48-0c73-4dad-8c9f-00a2af20d897',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: 'By Touch Medical Media Service'
  ),
  Video(
      name: 'CPR (Adult)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F6%20How%20to%20do%20CPR%20on%20an%20Adult%20(Ages%2012%20and%20Older).mp4?alt=media&token=17062c5f-d407-419a-b329-4723097123dc',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Cincinnati Children's"
  ),
  Video(
      name: 'Burn (All Stages)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F10%20First%20Aid%20Skills_%20How%20to%20treat%201st%2C%202nd%20and%203rd%20degree%20burns.mp4?alt=media&token=55fd040d-c384-49d9-a311-291906724e41',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: 'By Kieram Litchfield'
  ),
  Video(
      name: 'Burn (1st Degree)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F11%20How%20to%20treat%20a%20first%20degree%20(minor)%20burn.mp4?alt=media&token=8ce06573-eb46-4a91-9f96-778589987b25',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By American Academy of Dermatology"
  ),
  Video(
      name: 'Burn (2nd Degree)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F12%20How%20to%20Treat%20a%20Second%20Degree%20Burn%20-%20Auburn%20Medical%20Group.mp4?alt=media&token=0f14fef7-f050-45c3-859b-127dfa39bd2e',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: 'By Auburn Medical Group'
  ),
  Video(
      name: 'Burn (3rd Degree)',
      url: 'hhttps://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F13%20Third%20Degree%20Burn_%20Symptoms%20and%20Treatment.mp4?alt=media&token=a3e2406f-a950-48e0-9968-66177b6184ae',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Wound Care OC"
  ),
  Video(
      name: 'Insect Bite / Sting',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F14%20How%20to%20treat%20an%20insect%20bite%20or%20sting%20-%20NHS.mp4?alt=media&token=e8561cde-a973-49e4-92b8-a5c1e3e06391',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: 'By NHS'
  ),
  Video(
      name: 'Choking (Infant / Babies)',
      url: 'https://www.youtube.com/watch?v=oswDpwzbAV8',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St. John Ambulance"
  ),
  Video(
      name: 'Choking (Children / Adult)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F15%20Choking%20Adult%20_%20First%20Aid.mp4?alt=media&token=f17977e3-7597-4351-bec4-ac2dda3f1fef',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: 'By First Aid for Life'
  ),
  Video(
      name: 'Choking (Children / Adult)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F16%20SAFE%20STEPS%20First%20Aid%20-%20CHOKING%20(Filipino).mp4?alt=media&token=0740207b-714a-41e2-bc28-5a0edb2445c9',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Safe Steps"
  ),
  Video(
      name: 'Nosebleed',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F17%20How%20to%20Treat%20Nose%20Bleeds%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=a053c212-f281-4c43-802e-d4573ec8f0f5',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St. John Ambulance"
  ),
  Video(
      name: 'Drowning (Infant)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F18%20What%20to%20do%20if%20your%20Baby%20is%20Drowning%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=0a074c98-9d95-44e4-b924-9d7ab903506c',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St. John Ambulance"
  ),
  Video(
      name: 'Drowning (Infant)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F19%20Child%20Rescue%20Breathing.mp4?alt=media&token=0339e291-8aef-445f-899f-d59ff2d9e34b',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By ProCPR"
  ),
  Video(
      name: 'Drowning (Children / Adult)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F20%20How%20to%20perform%20CPR%20for%20a%20drowning%20victim.mp4?alt=media&token=2e2ffe06-c9fb-4a45-a874-09fd10b4b73b',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By ParkviewHealth"
  ),
  Video(
      name: 'Drowning (Children / Adult)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F21%20Learn%20first%20aid%20gestures-%20Drowning.mp4?alt=media&token=68569811-f522-4674-b4e7-7bccc35c2ec3',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Sikana English"
  ),
  Video(
      name: 'Splinter',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F22%20How%20to%20remove%20a%20splinter.mp4?alt=media&token=67a6e0df-79dc-4c1e-92a7-c3d9f33cd6b7',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By American Academy of Dermatology"
  ),
  Video(
      name: 'Splinter',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F23%20How%20To%20Remove%20a%20Splinter%20-%20Fast%20First%20Aid%20-%20Parents.mp4?alt=media&token=a510a8d8-d219-4ef3-8500-7bcaa3d5461b',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Parents"
  ),
  Video(
      name: 'Bleeding',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F24%20First%20Aid%20-%20Minor%20Bleeding.mp4?alt=media&token=6c896cc5-5856-49c9-bfb7-0e620118716d',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Surf Life Saving New Zealand"
  ),
  Video(
      name: 'Electric Shock',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F25%20%23FirstAidSeries%20_%20First%20Aid%20in%20case%20of%20Electric%20Shock.mp4?alt=media&token=e90f7da8-2fcb-4a2e-98f5-2c2f1b1b2449',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Kauvery Hospital"
  ),
  Video(
      name: 'Allergy / Anaphylaxis (Infant)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F26%20If%20Your%20Baby%20has%20a%20Severe%20Allergic%20Reaction%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=739da50c-bc71-42cc-b850-ebf7832496e6',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Allergy / Anaphylaxis (Adult)',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F27%20Anaphylactic%20Shock%20-%20What%20to%20do_.mp4?alt=media&token=5541b197-6b20-4434-8014-5733ce1f4fc1',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By The First Aid Show"
  ),
  Video(
      name: 'Shock',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F28%20How%20to%20Treat%20Shock%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=f1b636f4-7fe3-4595-bff1-61b4c58ceff3',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Shock',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F29%20How%20to%20Treat%20Someone%20for%20Shock%20-%20First%20Aid%20Training.mp4?alt=media&token=ebb7769d-bc2f-4e68-b918-9f3078415d67',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Howcast"
  ),
  Video(
      name: 'Head Injury',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F30%20How%20to%20Treat%20a%20Head%20Injury-%20%23BeALifesaver%20%23FirstAid.mp4?alt=media&token=40128090-2231-48dd-8a66-c3765b5c5b75',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By LIFESAVER"
  ),
  Video(
      name: 'Head Injury',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F31%20How%20to%20Treat%20a%20Head%20Injury%20-%20First%20Aid%20Training.mp4?alt=media&token=1f4b2582-7a7b-49eb-af4f-9df7f3c46641',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Howcast"
  ),
  Video(
      name: 'Seizure',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F32%20What%20To%20Do%20If%20Someone%20Has%20A%20Seizure%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=7720c491-9e49-499e-8025-ac9a0a13b0a0',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Seizure',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F33%20%23SeizureFirstAid%20-%20What%20to%20Do%20in%20the%20Event%20of%20a%20Seizure.mp4?alt=media&token=8fe82acc-901b-43a3-874b-9e046585ad34',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Epilepsy Foundation"
  ),
  Video(
      name: 'Common Cold',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F34%20How%20To%20Treat%20A%20Cold%20-%20How%20To%20Cure%20Common%20Cold%20-%20Best%20Medicine%20For%20A%20Cold%20And%20Fever%20And%20Sore%20Throat.mp4?alt=media&token=f7e313d7-d1d6-4b6a-9948-59aac3b3ba7c',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By AbrahamThePharmacist"
  ),
  Video(
      name: 'Heart Attack',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F35%20Heart%20Attack%20Symptoms%20_%20How%20to%20Treat%20a%20Heart%20Attack%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=f69b797c-63bc-4ad6-a253-39529dc983d4',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Diarrhea',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F37%207%20Home%20Remedies%20for%20Diarrhea%20-%20Health.mp4?alt=media&token=54542401-6d7a-4817-a5b8-1cad192468fc',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Health Magazine"
  ),
  Video(
      name: 'Chickenpox',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F38%20Chicken%20Pox%20What%20to%20Do%20by%20Dr%20Willie%20Ong.mp4?alt=media&token=1c8a294b-3377-402e-8a9b-ff013ba58d40',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Doc Willie Ong"
  ),
  Video(
      name: 'Chickenpox',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F39%20Child%20Care%20_%20First%20Aid%20-%20Children%20With%20Chicken%20Pox.mp4?alt=media&token=07dec440-56e4-4b3b-ae4c-08ac3fbcb436',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By eHow"
  ),
  Video(
      name: 'Asthma',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F40%20How%20to%20Treat%20an%20Asthma%20Attack%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=a19535ea-ab5d-4b9d-a27f-6e5c7a97b703',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Asthma',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F41%20Learn%20first%20aid%20gestures-%20Asthma%20Attack.mp4?alt=media&token=fed69817-f3e2-46f5-9ea4-11221be7e659',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Sikana English"
  ),
  Video(
      name: 'Sunburn',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F42%20How%20to%20Treat%20a%20Sunburn%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=dc4b7a9e-5fb4-457f-9afc-95c1e7c8cb3b',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Headache',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F43%20Headache%20Causes%20_%20Treatment%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=612deabf-8249-41bc-84bf-658f1f1648a2',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Heat Rashes',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F44%20How%20to%20Treat%20Heat%20Rash%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=bc28ff98-6cc1-4d0b-849a-858ee84586f4',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Heat Rashes',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F45%20Heat%20Rash%20-%20Easy%20Solutions%20for%20Prickly%20Summer%20Problem.mp4?alt=media&token=2b0b19e7-7965-4cac-bb48-5a1dc2e58f72',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Montefiore Health System"
  ),
  Video(
      name: 'Sore Eyes',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F46%20Sore%20Eyes%20at%20Sakit%20sa%20Mata%20-%20Payo%20ni%20Doc%20Frances%20Roa-Lingad%20at%20Doc%20Willie%20Ong.mp4?alt=media&token=d21b7853-dafd-4b96-96f3-a71b5dbdeb10',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Doc Willie Ong"
  ),
  Video(
      name: 'Sprains',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F49%20Practical%20First%20Aid%20%2318%20-%20Sprains%20and%20Strains.mp4?alt=media&token=767e6c7d-3aa3-4905-af92-1a26d8580aa5',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By flemingmedical"
  ),
  Video(
      name: 'Sprains',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F50%20First%20Aid-%20How%20to%20Treat%20Sprains.mp4?alt=media&token=28a27d27-2e6b-480c-9365-90d9a159edf5',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By RafflesHospital"
  ),
  Video(
      name: 'Fractures',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F51%20How%20To%20Treat%20A%20Fracture%20_%20Fracture%20Types%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=daca2a57-b699-4e19-96f6-e8948986da99',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Fractures',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F52%20SAFE%20STEPS%20First%20Aid-%20Broken%20Bones.mp4?alt=media&token=7cf73a83-9452-490d-95e4-745bc7acd82d',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By SAFE STEPS"
  ),
  Video(
      name: 'Cuts',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F53%20How%20to%20Treat%20Cuts%20and%20Grazes%20-%20First%20Aid%20Training%20-%20St%20John%20Ambulance.mp4?alt=media&token=2c06d858-f97d-4620-bbb6-11ee000e55c9',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By St John Ambulance"
  ),
  Video(
      name: 'Cuts',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F54%20First%20Aid_%20Cuts%20_%20Bruises.mp4?alt=media&token=18b63b77-ab6d-4c1c-98fd-4e375786a28d',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By RafflesHospital"
  ),
  Video(
      name: 'Chemical Ingestion / Poisoning',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F55%20How%20to%20help%20and%20give%20First%20Aid%20for%20a%20person%20with%20Chemical%20Ingestion.mp4?alt=media&token=10217dd2-4ee9-4fd7-bdde-8f343be31479',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By LIFESAVER"
  ),
  Video(
      name: 'Chemical Ingestion / Poisoning',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F56%20Learn%20first%20aid%20gestures-%20Chemical%20Poisoning.mp4?alt=media&token=9a526a87-ffb3-4a89-b558-38f0eddd718e',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Sikana English"
  ),
  Video(
      name: 'First Aid Kit',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F57%20First%20Aid%20Kit.mp4?alt=media&token=4ae999c1-9a19-4bbb-8c67-72ea6d94c767',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By LIFESAVER"
  ),
  Video(
      name: 'First Aid Kit',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F58%20Learn%20first%20aid%20gestures-%20How%20to%20Prepare%20a%20First%20Aid%20Kit.mp4?alt=media&token=111eb741-5f2b-4537-b5c9-9ce9221b0d68',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Sikana English"
  ),
  Video(
      name: 'Go Bag',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F59%20Know%20the%20complete%20Emergency%20Go%20Bag%20Checklist.mp4?alt=media&token=40ed2f8b-07e5-4ee0-9961-cda6c6db2565',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By LIFESAVER"
  ),
  Video(
      name: 'Go Bag',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F60%20UNTV%20Emergency%20Preparedness%20Home%20Supply%20Kit%20or%20Go%20Bag%20Checklist.mp4?alt=media&token=4bae741a-4559-4681-a60b-2049b2664d50',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Premium Health"
  ),
  Video(
      name: 'Fainting',
      url: 'https://firebasestorage.googleapis.com/v0/b/prototype1-4427b.appspot.com/o/videos%2F61%20First%20aid%20-%20Fainting.mp4?alt=media&token=a1597d06-e050-4364-8f66-ae5fdfe2160d',
      thumbnail: 'https://thumbs.dreamstime.com/b/young-man-feeling-scared-shocked-making-fear-anxiety-gestures-looking-terrified-desperate-trying-to-cover-himself-portrait-144539205.jpg',
      author: "By Howcast"
  ),
];