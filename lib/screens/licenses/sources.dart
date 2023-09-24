import 'package:flutter/material.dart';

class sourcesPage extends StatelessWidget {
  //const aboutPage({Key? key}) : super(key: key);

  Color primaryColor = Color(0xFF06283D);
  Color secondColor = Color(0xFF256D85);
  Color tertiaryColor = Color(0xFF47B5FF);
  Color subColor = Color(0xFFDFF6FF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF06283D),
          bottomOpacity: 0,
          elevation: 0,
          title: Text(
              'Sources'
          ),
          actions: [

          ]
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('SAVED',style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Image.asset('assets/logo.png',width: 70,height: 70,),
                ),

                Container(
                  padding: EdgeInsets.only(bottom: 15),
                  child: Text('1.0.0',style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500
                  ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text('Copyright ${DateTime.now().year} SAVED'),
                ),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'CUT / SCRAPE',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n- https://images.ctfassets.net/yixw23k2v6vo/2i1We9dmgmD7PkpQ3agXDi/'
                                    '583530f5ba221459a9c7611f6282db15/large-04-GettyImages-1138616923.jpg?fm=webp&fit=thumb&q'
                                    '=65&w=824&h=549',style: TextStyle(
                                  fontStyle: FontStyle.italic,

                                )),
                                TextSpan(text: '\n(INFORMATION) \n- https://medlineplus.gov/ency/article/000043.htm\n'
                                    '- https://www.emedicinehealth.com/cuts_or_lacerations/article_em.htm\n'
                                    '- https://www.mayoclinic.org/first-aid/first-aid-cuts/basics/art-20056711\n'
                                    '- https://www.aad.org/public/everyday-care/injured-skin/burns/treat-minor-cuts\n'
                                    '- https://www.ucihealth.org/blog/2018/10/wound-care',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'LACERATION',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \nhttps://images.emedicinehealth.com/images/article'
                                    '/main_image/cuts-lacerations.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    '- https://uvahealth.com/services/plastic-surgery/laceration-repair\n'
                                    '- https://www.mdexpressva.com/lacerations-basic-first-aid-professional-treatment/\n'
                                    '- https://www.verywellhealth.com/how-to-treat-a-laceration-1298916',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'ABRASIONS',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n- https://images.ctfassets.net/yixw23k2v6vo/6fUswZxeQEx8tp49ml6NrE/9ea085734e15f99d763d0ecdd6c104b1/'
                                    'large-02-GettyImages-1270491497.jpg?fm=webp&fit=thumb&q=65&w=824&h=549',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    '- https://www.urmc.rochester.edu/encyclopedia/content.aspx?contenttypeid=90&contentid=P02789\n'
                                    '- https://www.healthline.com/health/abrasion#grades\n'
                                    '- https://www.betterhealth.vic.gov.au/health/conditionsandtreatments/skin-cuts-and-abrasions\n'
                                    '- https://intermountainhealthcare.org/blogs/topics/live-well/2017/10/4-steps-to-treat-abrasions-at-home/- https://intermountainhealthcare.org/blogs/topics/live-well/2017/10/4-steps-to-treat-abrasions-at-home/\n'
                                    "- https://myhealth.alberta.ca/Health/aftercareinformation/pages/conditions.aspx?hwid=ug5811\n"
                                    '- https://www.normanregional.com/blog/8-tips-to-wound-healing',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'PUNCTURE',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n- https://images.medicinenet.com/images/article/'
                                    'main_image/puncture-wound.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    '- https://www.rxlist.com/puncture_wound/definition.htm\n'
                                    '- https://medlineplus.gov/ency/article/000043.htm\n'
                                    '- https://www.healthline.com/health/open-wound#treatment\n'
                                    '- https://www.futurelearn.com/info/courses/basic-first-aid/0/steps/27028- https://www.futurelearn.com/info/courses/basic-first-aid/0/steps/27028\n'
                                    "- https://www.safeopedia.com/definition/1385/puncture-environmental-health-and-safety\n"
                                    '- https://www.summahealth.org/flourish/entries/2022/01/dos-and-donts-to-safely-care-for-cuts-and-scrapes-at-home\n'
                                    "- https://www.healthline.com/health/stepped-on-a-nail#see-a-doctor\n"
                                    "- https://www.mayoclinic.org/first-aid/first-aid-puncture-wounds/basics/art-20056665\n"
                                    "- https://www.beaconhealthsystem.org/library/FirstAid/puncture-wounds-first-aid/"
                                    ,style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                    )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'BURN',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n- https://r3healing.com/wp-content/uploads/2021/07/77427144.jpeghttps://'
                                    'r3healing.com/wp-content/uploads/2021/07/77427144.jpeghttps://r3healing.com/wp-content/uploads/'
                                    '2021/07/77427144.jpeghttps://r3healing.com/wp-content/uploads/2021/07/77427144.jpeghttps://'
                                    'r3healing.com/wp-content/uploads/2021/07/77427144.jpeghttps://r3healing.com/'
                                    'wp-content/uploads/2021/07/77427144.jpeg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    '- https://www.cornerstoneuc.com/2020/09/18/wound-care/\n'
                                    '- https://www.lvhn.org/news/burn-care-dos-and-donts\n'
                                    '- https://www.mayoclinic.org/diseases-conditions/burns/symptoms-causes/syc-20370539#:~:text='
                                    'Burns%20are%20tissue%20damage%20that,problems%20or%20life%2Dthreatening%20emergencies.',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'SPLINTER',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n- https://www.thedoctorstv.com/sites/default/files/styles/video'
                                    '_1920x1080/public/images/2010-02/16077.png.jpg?itok=cxVGjTnC',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    '- https://www.webmd.com/first-aid/splinters-treatment#:~:text=2.-,Care%20for%20a%20Tiny%20Splinter,work%2C%20try%20hair%20removal%20wax\n'
                                    '- https://kidshealth.org/en/parents/splinters-sheet.html\n'
                                    '- https://health.clevelandclinic.org/how-to-remove-a-splinter-and-when-to-call-the-doctor/',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'INSECT BITE / STING',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \nhttps://images.everydayhealth.com/images/skin-beauty/bug-bites/'
                                    'why-mosquito-bites-itch-and-how-to-get-relief-722x406.jpghttps://images.everydayhealth.com/'
                                    'images/skin-beauty/bug-bites/why-mosquito-bites-itch-and-how-to-get-relief-722x406.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    '- https://www.mayoclinic.org/first-aid/first-aid-insect-bites/basics/art-20056593\n'
                                    "- https://www.nhsinform.scot/illnesses-and-conditions/injuries/skin-injuries/"
                                    "insect-bites-and-stings#:~:text=Symptoms%20of%20an%20insect%20bite,"
                                    "it's%20harmless%20in%20most%20cases.",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'SUNBURN',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n- https://media.cdn.wederm.com/wp-content/uploads/sites/'
                                    '3/2020/08/17142407/PeelingSunburn-iStock.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.webmd.com/skin-problems-and-treatments/guide/sunburn\n"
                                    "- https://www.nhs.uk/conditions/sunburn/\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/sunburn/symptoms-causes/syc-20355922",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'NOSEBLEED',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n- https://curehht.org/wp-content/uploads/2019/'
                                    '04/bloody-tissue_1484520119_10.18.2019-300x200.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/first-aid/first-aid-nosebleeds/basics/art-20056683\n"
                                    "- https://hemaware.org/mind-body/nosebleed-dos-and-donts\n"
                                    "- https://kidshealth.org/en/parents/nosebleeds-sheet.html\n"
                                    "- https://www.webmd.com/first-aid/nosebleeds-causes-and-treatments",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'CHOKING',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    'For Babies:\n- https://images.ctfassets.net/6m9bd13t776q/2y6oTaSlXuk8kGeQ82k0Q8/'
                                    'fe332bdaf47967784d98c2d3f653536d/infant-cpr-baby-eating-2160x1200_.jpg?q=75&w=660\n'
                                    'Children / Adult:\n- https://www.mymed.com/image/2763/MedicalArticle/700',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.emedicinehealth.com/choking/article_em.htm\n"
                                    "- https://www.stjohnvic.com.au/news/choking-first-aid-top-16-dos-donts/\n"
                                    "- https://www.betterhealth.vic.gov.au/health/conditionsandtreatments/choking\n"
                                    "- https://www.healthdirect.gov.au/choking\n"
                                    "- https://www.ivpressonline.com/dos-and-donts-when-someone-is-choking/article_20366e26-1f49-11ec-bdd1-1baa73fe3450.html\n"
                                    "- https://www.redcross.org.uk/first-aid/learn-first-aid/choking\n"
                                    "- https://www.mayoclinic.org/first-aid/first-aid-choking/basics/art-20056637",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'DROWNING',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://www.helpinginjuredpeople.com/wp-content/uploads/2021/10/Drowning-Accident.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mydr.com.au/recovery-position/#:~:text=The%20recovery%20position%20is%20used,possible%20for%20someone%20who's%20unconscious.\n"
                                    "- https://www.seameo.org/img/Programmes_Projects/Competition/SEAMEOJapanESD_Award/2012_SEAMEOJapanESD_Award/Submission/Vietnam/65_Hung%20Hoi%20Sec%20School_VN/Atth4_First%20aid%20drowning.pdf\n"
                                    "- https://www.moh.gov.sa/en/awarenessplateform/FirstAid/Pages/Drowning.aspx\n"
                                    "- https://www.webmd.com/first-aid/drowning-treatment\n"
                                    "- https://www.cdc.gov/drowning/facts/index.html#:~:text=Drowning%20is%20the%20process%20of,the%20drowning%20results%20in%20death.",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'ELECTRIC SHOCK',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://t3.ftcdn.net/jpg/03/72/16/08/360_F_372160835_WkdoxOWplAjoPwutYMVwZ4PAESQxikH5.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/first-aid/first-aid-electrical-shock/basics/art-20056695#:~:text=Turn%20off%20the%20source%20of,as%20breathing%2C%20coughing%20or%20movement.\n"
                                    "- https://www.webmd.com/first-aid/electric-shock-treatment\n"
                                    "- https://www.sja.org.uk/get-advice/first-aid-advice/minor-illnesses-and-injuries/low-voltage-electrocution/\n"
                                    "- https://www.healthline.com/health/electric-shock\n"
                                    "- https://www.webmd.com/first-aid/electric-shock#:~:text=An%20electric%20shock%20occurs%20when,in%20devastating%20damage%20or%20death.",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'SHOCK',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://phmc.com.ph/wp-content/uploads/2020/09/What-To-Do-When-An-Epileptic-Seizure-Occurs.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/first-aid/first-aid-shock/basics/art-20056620#:~:text=Seek%20emergency%20medical%20care&text=Keep%20the%20person%20still%20and,person%20eat%20or%20drink%20anything.\n"
                                    "- https://www.webmd.com/first-aid/shock-treatment\n"
                                    "- https://www.sja.org.uk/get-advice/first-aid-advice/bleeding/shock/\n"
                                    "- https://www.healthywa.wa.gov.au/Articles/F_I/First-aid-for-shock",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'HEART ATTACK',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://images.news18.com/ibnlive/uploads/2022/07/heart-attack-16569389733x2.png?im=Resize,width=360,aspect=fit,type=normal?im=Resize,width=320,aspect=fit,type=normal',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/diseases-conditions/heart-attack/symptoms-causes/syc-20373106",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'SHRAPNEL',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://cdn.shopify.com/s/files/1/2012/7847/files/shoulder_large.jpg?v=1505403888',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://emedicine.medscape.com/article/822587-treatment\n"
                                    "- https://www.merriam-webster.com/dictionary/shrapnel\n"
                                    "- https://www.pewpewtactical.com/how-to-treat-common-range-injuries/#toc5",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'HEAD INJURY',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://concussionresolution.com/wp-content/uploads/2020/05/woman-with-concussion.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.healthline.com/health/head-injury#treatments",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'SEIZURE',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://st2.depositphotos.com/4297405/8069/v/450/depositphotos_80698162-stock-illustration-scene-illustration-first-aid-person.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.cdc.gov/epilepsy/about/first-aid.htm\n"
                                    "- https://www.epilepsy.com/living-epilepsy/seizure-first-aid-and-safety/first-aid-seizures-stay-safe-side\n"
                                    "- https://www.webmd.com/epilepsy/epilepsy-seizure-what-to-do-in-an-emergency"
                                    "- https://www.betterhealth.vic.gov.au/health/conditionsandtreatments/epilepsy-first-aid-and-safety\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/seizure/symptoms-causes/syc-20365711\n"
                                    "- https://www.epilepsy.com/living-epilepsy/seizure-first-aid-and-safety/first-aid-seizures-stay-safe-side",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'RABIES',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://topdogtips.com/wp-content/uploads/2020/01/Signs-of-Rabies-in-Dogs-and-Their-Three-Prominent-Stages-1021x580.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.healthline.com/health/dog-bite-treatment\n"
                                    "- https://kidshealth.org/en/parents/animal-bites-sheet.html\n"
                                    "- https://www.webmd.com/first-aid/rabies-treatment"
                                    "- https://www.cdc.gov/rabies/about.html#:~:text=Rabies%20is%20a%20preventable%20viral,in%20the%20brain%20and%20death.\n"
                                    "- https://scdhec.gov/sites/default/files/Library/CR-011897.pdf\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/rabies/symptoms-causes/syc-20351821\n"
                                    "- https://www.mayoclinic.org/drugs-supplements/rabies-vaccine-intramuscular-route/precautions/drg-20069868?p=1\n"
                                    "- https://pets.webmd.com/dogs/dog-bites",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'COMMON COLD',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://images.onhealth.com/images/slideshow/10_tips_prevent_cold_s1_sneezing_women.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/diseases-conditions/common-cold/symptoms-causes/syc-20351605\n"
                                    "- https://www.healthline.com/health/how-to-break-a-fever#How-to-break-a-fever\n"
                                    "- https://www.unilab.com.ph/biogesic/faqs#:~:text=The%20recommended%20dose%20of%20Biogesic,in%20any%2024%2Dhour%20period.\n"
                                    "- https://www.cdc.gov/rabies/about.html#:~:text=Rabies%20is%20a%20preventable%20viral,in%20the%20brain%20and%20death.\n"
                                    "- https://www.1mg.com/articles/down-with-fever-dos-and-donts/",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'COMMON COLD',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://images.onhealth.com/images/slideshow/10_tips_prevent_cold_s1_sneezing_women.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/diseases-conditions/common-cold/symptoms-causes/syc-20351605\n"
                                    "- https://www.healthline.com/health/how-to-break-a-fever#How-to-break-a-fever\n"
                                    "- https://www.unilab.com.ph/biogesic/faqs#:~:text=The%20recommended%20dose%20of%20Biogesic,in%20any%2024%2Dhour%20period.\n"
                                    "- https://www.cdc.gov/rabies/about.html#:~:text=Rabies%20is%20a%20preventable%20viral,in%20the%20brain%20and%20death.\n"
                                    "- https://www.1mg.com/articles/down-with-fever-dos-and-donts/",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'COUGH',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://www.mydr.com.au/wp-content/uploads/2020/10/AdobeStock_292971028-scaled.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/symptoms/cough/basics/definition/sym-20050846#:~:text=A%20cough%20is%20your%20body's,cough%20is%20normal%20and%20healthy.\n"
                                    "- https://www.webmd.com/cold-and-flu/overview\n"
                                    "- https://www.medicalnewstoday.com/articles/322394#twelve-natural-cough-remedies\n"
                                    "- https://www.webmd.com/cold-and-flu/ss/slideshow-cough-treatments\n"
                                    "- https://www.firstpost.com/health/5-foods-that-are-actually-making-your-cough-and-cold-worse-8037721.html",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'FLU',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://files.nccih.nih.gov/man-cold-flu.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.redcross.ca/training-and-certification/first-aid-tips-and-resources/first-aid-tips/flu-prevention\n"
                                    "- https://kidshealth.org/en/parents/flu-sheet.html#:~:text=Relieve%20symptoms%20with%3A,give%20according%20to%20package%20directions)\n"
                                    "- https://www.webmd.com/cold-and-flu/coping-with-flu\n"
                                    "- https://vicks.com/en-us/treatments/how-to-treat-the-flu/how-to-treat-the-flu\n"
                                    "- https://www.connecticutchildrens.org/health-library/en/parents/flu-sheet/",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'HEADACHE',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://images.theconversation.com/files/175523/original/file-20170626-4492-mqyzj3.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1356&h=668&fit=crop',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.myupchar.com/en/disease/headache/first-aid\n"
                                    "- https://kidshealth.org/en/parents/headaches-sheet.html#:~:text=lie%20down%20in%20a%20dark,across%20the%20forehead%20or%20eyes\n"
                                    "- https://www.mayoclinic.org/first-aid/first-aid-headache/basics/art-20056639\n"
                                    "- https://www.sja.org.uk/get-advice/first-aid-advice/minor-illnesses-and-injuries/headaches/\n"
                                    "- https://my.clevelandclinic.org/health/diseases/9639-headaches#:~:text=Headaches%20are%20a%20very%20common,medication%2C%20stress%20management%20and%20biofeedback.",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'MIGRAINE',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://owh-wh-d9-prod.s3.amazonaws.com/s3fs-public/heading-images/Migraine.jpg?VOVXD5KS.lI9h2JWC13ligmyEOMkyWS',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://familydoctor.org/condition/migraines/\n"
                                    "- https://medlineplus.gov/migraine.html\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/migraine-headache/symptoms-causes/syc-20360201#:~:text=A%20migraine%20is%20a%20headache,sensitivity%20to%20light%20and%20sound.\n"
                                    "- https://www.webmd.com/migraines-headaches/migraines-headaches-basics\n"
                                    "- https://www.webmd.com/migraines-headaches/not-to-do-migraines\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/migraine-headache/in-depth/migraines/art-20047242\n"
                                    "- https://www.webmd.com/migraines-headaches/migraines-headaches-migraines\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/migraine-headache/in-depth/migraines/art-20047242#:~:text=Apply%20hot%20or%20cold%20compresses,may%20have%20a%20similar%20effect.\n"
                                    "- https://www.webmd.com/migraines-headaches/guide/when-call-doctor-migraines-headaches\n",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'DIARRHEA',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsnEobqFHuy4ym_ttfibZhaqyMGYj97VfU9ezOc6vaVgv5OYdBXIFTADcHY08V4qIROuk&usqp=CAU',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.everydayhealth.com/diarrhea/treatment/dos-donts-treating-diarrhea-quick-relief/\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/diarrhea/diagnosis-treatment/drc-20352246#:~:text=Drink%20plenty%20of%20liquids%2C%20including,%2C%20eggs%2C%20rice%20or%20chicken.\n"
                                    "- https://www.webmd.com/digestive-disorders/understanding-diarrhea-treatment",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'ALLERGIC REACTION',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://images.ctfassets.net/4f3rgqwzdznj/2TaXFCCvvdpN2MdWVmTpoE/4e3d68bea6db1eb537556cd181db8a14/cropped_womans_arm_allergic_rash-1337085512.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://my.clevelandclinic.org/health/diseases/8610-allergy-overview\n"
                                    "- https://www.dictionary.com/browse/allergy\n"
                                    "- https://www.webmd.com/first-aid/allergic-reaction-treatment\n"
                                    "- https://myhealth.alberta.ca/Health/aftercareinformation/pages/conditions.aspx?hwid=uf7204",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'ANAPHYLAXIS',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://www.demack.ie/wp-content/uploads/2015/10/demack-safety-allergic-reaction-swollen-face.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/first-aid/first-aid-anaphylaxis/basics/art-20056608#:~:text=Loosen%20tight%20clothing%20and%20cover,coughing%20or%20movement%2C%20begin%20CPR%20.\n"
                                    "- https://www.medicalnewstoday.com/articles/321500#identifying-and-treating-anaphylaxis\n"
                                    "- https://www.betterhealth.vic.gov.au/aealth/conditionsandtreatments/allergic-reactions-emergency-first-aid#emergency-first-aid-for-severe-allergic-reactions\n"
                                    "- https://my.clevelandclinic.org/health/diseases/8619-anaphylaxis?_ga=2.260148045.158929570.1649767951-1653059311.1647091330&_gl=1*1wrm5im*_ga*MTY1MzA1OTMxMS4xNjQ3MDkxMzMw*_ga_HWJ092SPKP*MTY0OTgzMjMzNS43LjEuMTY0OTgzMjYzMS4w\n"
                                    "- https://mdpremier.com/dos-donts-suffering-allergic-reaction/",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'STOMACHACHE',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://st.depositphotos.com/2249091/4152/i/950/depositphotos_41522201-stock-photo-man-with-stomachache.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.medicalnewstoday.com/articles/322047#Twenty-one-home-remedies\n"
                                    "- https://www.insider.com/foods-to-avoid-when-you-have-a-stomachache-2018-5\n"
                                    "- https://www.healthdirect.gov.au/abdominal-pain",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'CHICKEN POX',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/642x361_Chickenpox.jpg?w=1155&h=7581',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/diseases-conditions/chickenpox/symptoms-causes/syc-20351282\n"
                                    "- https://www.cdc.gov/chickenpox/about/prevention-treatment.html",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'RASHES',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://images.theconversation.com/files/209558/original/file-20180308-30983-e4u830.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.cancer.gov/publications/dictionaries/cancer-terms/def/rash\n"
                                    "- https://www.docdoc.com/medical-information/conditions/rash\n"
                                    "- https://medlineplus.gov/rashes.html\n"
                                    "- https://www.webmd.com/skin-problems-and-treatments/guide/common-rashes\n"
                                    "- https://www.michigan.gov/-/media/Project/Websites/flintwater/Media-Archive-Folder-Do-Not-Publish/documents-Folder1-archive/Dos_and_Donts_of_Rashes_Dr_Barkey.pdf?rev=7b3c245d81ec43a78043d694509cf166\n"
                                    "- https://www.spartanburgderm.com/5-do-s-and-don-ts-to-treat-dry-itchy-skin\n"
                                    "- https://www.webmd.com/skin-problems-and-treatments/ss/slideshow-sensitive-skin-dos-donts",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'HAND, FOOT, AND MOUTH',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://post.medicalnewstoday.com/wp-content/uploads/sites/3/2020/11/shutterstock_1652101321_thumb-732x549.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.cdc.gov/hand-foot-mouth/about/signs-symptoms.html\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/hand-foot-and-mouth-disease/symptoms-causes/syc-20353035#:~:text=Hand%2Dfoot%2Dand%2Dmouth%20disease%20%E2%80%94%20a%20mild%2C,foot%2Dand%2Dmouth%20disease.\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/hand-foot-and-mouth-disease/diagnosis-treatment/drc-20353041\n"
                                    "- https://www.webmd.com/children/guide/hand-foot-mouth-disease\n"
                                    "- https://kidshealth.org/en/parents/hfm.html",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'SORE EYES',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgVgsoUc_GdYIzlz3LxJv4YzjoZk35SDUBsDyHocsFYMuTiAEQHGtJKq4lCNcYhpzWXOk&usqp=CAU',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mydr.com.au/sore-eyes/\n"
                                    "- https://www.healthgrades.com/right-care/eye-health/sore-eyes\n"
                                    "- https://www.singhealth.com.sg/rhs/get-well/gpfirst/sore-eyes#:~:text=%E2%80%8B'Sore%20Eyes'%20is%20the,the%20eye%20(the%20conjunctiva).\n"
                                    "- https://rmc.doh.gov.ph/patientscorner/health-corner/137-sore-eyes\n"
                                    "- https://carle.org/conditions/conjunctivitis#:~:text=DOs%20and%20DON'Ts%20in,share%20eye%20cosmetics%20with%20others.\n"
                                    "- https://www.cdc.gov/conjunctivitis/about/prevention.html\n"
                                    "- https://www.healthline.com/health/sore-eye-remedies#see-a-doctor",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'ASTHMA',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://images.news18.com/ibnlive/uploads/2021/11/asthma-16357548084x3.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.webmd.com/asthma/what-is-asthma\n"
                                    "- https://my.clevelandclinic.org/health/diseases/6424-asthma\n"
                                    "- https://www.betterhealth.vic.gov.au/health/conditionsandtreatments/asthma-emergency-first-aid\n"
                                    "- https://www.ciplamed.com/content/do-s-don-ts-for-asthma-patients\n"
                                    "- https://www.healthline.com/health/asthma/asthma-attack-no-inhaler#remain-calm",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'FRACTURE',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '(NO SRC IMAGE)',style: TextStyle(  //NO IMAGE SOURCE
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.cedars-sinai.org/health-library/diseases-and-conditions/f/fractures.html#:~:text=points%20about%20fractures-,A%20fracture%20is%20a%20partial%20or%20complete%20break%20in%20the,diseases%20that%20weaken%20the%20bone.\n"
                                    "- https://southshoreorthopedics.com/common-types-of-bone-fractures/\n"
                                    "- https://www.mayoclinic.org/first-aid/first-aid-fractures/basics/art-20056641",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'SPRAINS',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '(NO SRC IMAGE)',style: TextStyle(  //NO IMAGE SOURCE
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.indigourgentcare.com/blog/sprained-ankle-dos-and-donts\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/sprains/symptoms-causes/syc-20377938#:~:text=A%20sprain%20is%20a%20stretching,be%20successfully%20treated%20at%20home.- https://www.mayoclinic.org/diseases-conditions/sprains/symptoms-causes/syc-20377938#:~:text=A%20sprain%20is%20a%20stretching,be%20successfully%20treated%20at%20home.- https://www.mayoclinic.org/diseases-conditions/sprains/symptoms-causes/syc-20377938#:~:text=A%20sprain%20is%20a%20stretching,be%20successfully%20treated%20at%20home.\n"
                                    "- https://my.clevelandclinic.org/health/diseases/15461-sprains-of-the-ankle-knee-and-wrist",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'TEARS',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '(NO SRC IMAGE)',style: TextStyle(  //NO IMAGE SOURCE
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://kidshealth.org/en/teens/acl-injuries.html\n"
                                    "- https://www.mayoclinic.org/diseases-conditions/acl-injury/symptoms-causes/syc-20350738#:~:text=Depending%20on%20the%20severity%20of,risk%20of%20an%20ACL%20injury.\n"
                                    "- https://www.muirortho.com/orthopedic-blog/2019/december/sprain-vs-tear-know-the-difference/",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'DISLOCATION',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '(NO SRC IMAGE)',style: TextStyle(  //NO IMAGE SOURCE
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mayoclinic.org/first-aid/first-aid-dislocation/basics/art-20056693#:~:text=A%20dislocation%20is%20an%20injury,involves%20the%20body's%20larger%20joints.\n"
                                    "- https://my.clevelandclinic.org/health/diseases/17873-dislocation\n"
                                    "- https://medlineplus.gov/ency/article/000014.htm\n"
                                    "- https://www.healthline.com/health/dislocation- https://www.healthline.com/health/dislocation\n"
                                    "- https://kidshealth.org/en/parents/dislocations-sheet.html",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'LIMP',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '(NO SRC IMAGE)',style: TextStyle(  //NO IMAGE SOURCE
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.buoyhealth.com/learn/limping",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'GUNPOWDER',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Black_Powder-1.JPG/1280px-Black_Powder-1.JPG',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.brown.edu/Departments/Joukowsky_Institute/courses/13things/7687.html#:~:text=%E2%80%9CGunpowder%2C%E2%80%9D%20as%20it%20came,for%20a%20life%2Dextending%20elixir.\n",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'DETERGENT',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    '- https://www.rxwiki.com/sites/files/styles/article_2/public/photo/dreamstime_s_107694152.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://en.wikipedia.org/wiki/Detergent#:~:text=A%20detergent%20is%20a%20surfactant,chain%20of%20benzene%20sulphonic%20acid.\n"
                                    "- https://www.safewise.com/blog/common-household-poisons-how-to-treat/#:~:text=Symptoms%3A%20Swallowing%20liquid%20or%20granular,seek%20other%20medical%20help%20immediately.",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'BLEACH',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    'https://cdn.images.express.co.uk/img/dynamic/11/590x/Bleach-toxicity-Symptoms-to-spot-1573434.webp?r=1646088027207',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.britannica.com/technology/bleach-chemistry\n"
                                    "- https://azpoison.com/sites/default/files/poisonology_bleach.pdf",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'SOAP / SHAMPOO',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    'https://missouripoisoncenter.org/wp-content/uploads/2019/01/bigstock-Foaming-Hand-Soap-For-Washing-5593055.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.healthline.com/health/bubble-bath-soaps#signs-and-symptoms\n"
                                    "- https://www.biologyonline.com/dictionary/soap\n"
                                    "- https://www.sciencedirect.com/topics/chemistry/shampoo\n"
                                    "- https://ssl.adam.com/content.aspx?productid=617&pid=1&gid=002762&site=makatimed.adam.com&login=MAKA1603",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'RUBBING ALCOHOL',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    'https://imageio.forbes.com/specials-images/imageserve/5f2b39da7aaafbc1653ebf61/0x0.jpg?format=jpg&width=1200',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.collinsdictionary.com/dictionary/english/rubbing-alcohol\n"
                                    "- https://www.healthline.com/health/isopropyl-alcohol#prevention\n",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'CPR',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    'https://www.news-medical.net/image.axd?picture=2018%2F4%2Fshutterstock_By_spkphotostock.jpg',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.verywellhealth.com/how-to-do-cpr-1298446\n"
                                    "- https://www.mayoclinic.org/first-aid/first-aid-cpr/basics/art-20056600\n"
                                    "- https://www.medicalnewstoday.com/articles/324712#cpr-step-by-step\n"
                                    "- https://www.redcross.org/take-a-class/cpr/performing-cpr/cpr-steps",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'HEIMLICH MANEUVER',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    'https://assets3.thrillist.com/v1/image/1691914/1200x600/scale;',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://my.clevelandclinic.org/health/treatments/21675-heimlich-maneuver\n"
                                    "- https://www.vocabulary.com/dictionary/Heimlich%20maneuver\n"
                                    "- https://www.mayoclinic.org/first-aid/first-aid-choking/basics/art-20056637\n"
                                    "- https://www.msdmanuals.com/professional/critical-care-medicine/how-to-do-basic-airway-procedures/how-to-do-the-heimlich-maneuver-in-the-conscious-adult-or-child",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'HEIMLICH MANEUVER',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    'https://assets3.thrillist.com/v1/image/1691914/1200x600/scale;',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://my.clevelandclinic.org/health/treatments/21675-heimlich-maneuver\n"
                                    "- https://www.vocabulary.com/dictionary/Heimlich%20maneuver\n"
                                    "- https://www.mayoclinic.org/first-aid/first-aid-choking/basics/art-20056637\n"
                                    "- https://www.msdmanuals.com/professional/critical-care-medicine/how-to-do-basic-airway-procedures/how-to-do-the-heimlich-maneuver-in-the-conscious-adult-or-child",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'HEIMLICH MANEUVER',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    'https://assets3.thrillist.com/v1/image/1691914/1200x600/scale;',style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://my.clevelandclinic.org/health/treatments/21675-heimlich-maneuver\n"
                                    "- https://www.vocabulary.com/dictionary/Heimlich%20maneuver\n"
                                    "- https://www.mayoclinic.org/first-aid/first-aid-choking/basics/art-20056637\n"
                                    "- https://www.msdmanuals.com/professional/critical-care-medicine/how-to-do-basic-airway-procedures/how-to-do-the-heimlich-maneuver-in-the-conscious-adult-or-child",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'RICE METHOD',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    "(NO SRC IMAGE)",style: TextStyle(  //NO IMAGE SOURCE
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.medicalnewstoday.com/articles/321469\n"
                                    "- https://www.webmd.com/first-aid/rice-method-injuries\n"
                                    "- https://www.coastalorthoteam.com/blog/rice-treatment-why-it-works-so-well-for-minor-injuries#:~:text=RICE%20treatment%2C%20or%20RICE%20therapy,%2C%20pain%2C%20and%20blood%20flow\n"
                                    "- https://wvorthocenter.com/rice/",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'TYPHOON',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    "https://www.kxnet.com/wp-content/uploads/sites/16/2020/10/a207a8f2386d47ce88b8bb450b0c0086.jpg?w=876&h=493&crop=1",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.cdc.gov/disasters/hurricanes/be-safe-after.html\n"
                                    "- https://www.britannica.com/science/tropical-cyclone\n"
                                    "- https://www.vocabulary.com/dictionary/typhoon\n"
                                    "- https://www.openhazards.com/faq/hurricanes-tropical-cyclones-and-typhoons/what-typhoon\n"
                                    "- https://www.pagasa.dost.gov.ph/information/about-tropical-cyclone\n"
                                    "- https://wayph.com/what-to-do-before-during-and-after-typhoon/\n"
                                    "- https://resources.realestate.co.jp/living/5-things-you-should-do-now-to-prepare-for-typhoon-19/\n"
                                    "- https://www.moneymax.ph/lifestyle/articles/typhoon-in-the-philippines\n"
                                    "- https://dumaguetecity.gov.ph/2021/12/16/advisory-what-to-do-before-a-typhoon/\n"
                                    "- https://baguiocityguide.com/what-to-do-before-during-and-after-a-typhoon/\n"
                                    "- https://wayph.com/what-to-do-before-during-and-after-typhoon/\n"
                                    "- https://www.pagasa.dost.gov.ph/learning-tools/tropical-cyclone-wind-signal",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'EARTHQUAKE',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    "https://ichef.bbci.co.uk/news/976/mcs/media/images/70493000/jpg/_70493829_019650792-1.jpg",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.mtu.edu/geo/community/seismology/learn/earthquake-take-action/\n"
                                    "- https://www.environmentguide.org.nz/issues/natural-hazards/earthquakes/what-are-earthquakes/\n"
                                    "- https://www.un-spider.org/category/disaster-type/earthquake#:~:text=There%20are%20four%20different%20types,cause%20physical%20and%20chemical%20changes.\n"
                                    "- https://www.cofh.org/173/Before-During-and-After-an-Earthquake\n"
                                    "- https://www.redcross.ca/how-we-help/emergencie s-and-disasters-in-canada/types-of-emergencies/earthquakes\n"
                                    "- https://www.quakekare.com/earthquake\n"
                                    "- https://www.ready.gov/kit\n"
                                    "- https://www.quakekare.com/earthquake\n"
                                    "- https://www.redcross.ca/how-we-help/emergencie s-and-disasters-in-canada/types-of-emergencies/earthquakes\n"
                                    "- https://www.mtu.edu/geo/community/seismology/learn/earthquake-take-action/\n"
                                    "- https://www.britannica.com/science/earthquake-geology\n"
                                    "- https://www.environmentguide.org.nz/issues/natural-hazards/earthquakes/what-are-earthquakes/\n"
                                    "- https://www.un-spider.org/category/disaster-type/earthquake#:~:text=There%20are%20four%20different%20types,cause%20physical%20and%20chemical%20changes.\n"
                                    "- https://www.cofh.org/173/Before-During-and-After-an-Earthquake\n"
                                    "- http://www.pinoymountaineer.com/2012/02/mountain-safety-earthquakes-and-hiking.html",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'VOLCANIC ERUPTION',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    "https://s.abcnews.com/images/International/philippines-mayon-volcano-eruption-gty-mem-180124_4x3_992.jpg",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://coins.ph/blog/what-to-do-volcanic-eruption-tips/\n"
                                    "- https://www.cdc.gov/disasters/volcanoes/before.html\n"
                                    "- https://www.redcross.org/get-help/how-to-prepare-for-emergencies/types-of-emergencies/volcano.html\n"
                                    "- https://www.usgs.gov/faqs/how-do-volcanoes-erupt\n"
                                    "- https://en.wikipedia.org/wiki/Types_of_volcanic_eruptions\n"
                                    "-- https://www.ifrc.org/volcanic-eruptions\n"
                                    "- https://www.phivolcs.dost.gov.ph/index.php/volcano-hazard/volcano-alert-level",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'LANSLIDE',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    "https://blogs.agu.org/landslideblog/files/2018/09/18_09-Ubon-1-e1537163593232.jpg",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.nationalgeographic.org/encyclopedia/landslide/\n"
                                    "- https://www.usgs.gov/programs/landslide-hazards/landslide-preparedness",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'EL NIÑO',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    "https://blogs.agu.org/landslideblog/files/2018/09/18_09-Ubon-1-e1537163593232.jpg",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://doh.gov.ph/Health-Advisory/El-Nino-phenomenon#:~:text=Conserve%20water%20and%20use%20it%20wisely.&text=Protect%20water%20sources%20from%20contamination.&text=Drink%20more%20fluids.&text=Listen%20to%20the%20updates%20on%20shellfish%20ban.\n"
                                    "- https://www.nationalgeographic.org/encyclopedia/el-nino/#:~:text=Encyclopedic%20Entry%20Vocabulary-,El%20Ni%C3%B1o%20is%20a%20climate%20pattern%20that%20describes%20the%20unusual,%2DSouthern%20Oscillation%20(ENSO)."
                                    "- https://marufish.com/disaster/el-nino-la-nina/what-can-we-prepare-before-the-el-nino/\n"
                                    "- https://www.sandiego.gov/department-document/prepare-el-ni%C3%B1o-during-and-after-storm",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'LA NIÑA',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    "https://s.yimg.com/ny/api/res/1.2/odXbilngb_n9Knxfeijk.A--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTQyNw--/https://s.yimg.com/os/creatr-uploaded-images/2022-08/143de250-24f9-11ed-bddf-56f953e08257",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://doh.gov.ph/Health-Advisory/La-Nina-phenomenon#:~:text=Clean%2Dup%20all%20possible%20mosquito,old%20tires%20and%20tin%20cans.&text=Stay%20inside%20a%20house%20or%20building%20during%20heavy%20rains.&text=Avoid%20wading%20and%20taking%20baths%20in%20floodwaters.&text=When%20a%20flood%20advisory%20is,should%20seek%20for%20higher%20grounds.\n"
                                    "- https://www.ract.com.au/insurance-and-finance/related-articles/preparing-for-la-nina",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'GO BAG',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    "(NO SRC IMAGE)",style: TextStyle(  //NO IMAGE SOURCE
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.lumina.com.ph/news-and-blogs/blogs/whats-inside-your-go-bag/\n"
                                    "- https://www.usnews.com/news/healthiest-communities/articles/2018-06-12/what-goes-into-a-go-bag-how-to-prepare-an-emergency-kit",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Divider(color: primaryColor,endIndent: 5,indent: 5,),

                Container(
                  padding: EdgeInsets.only(right: 20,left: 20),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                              style: TextStyle(
                                  height: 1.5,
                                  fontSize: 16,color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(text: 'GO BAG',style: TextStyle(
                                    fontWeight: FontWeight.bold
                                )),
                                TextSpan(text: '\n(IMAGES) \n'
                                    "(NO SRC IMAGE)",style: TextStyle(  //NO IMAGE SOURCE
                                  fontStyle: FontStyle.italic,
                                )),
                                TextSpan(text: '\n(INFORMATION) \n'
                                    "- https://www.nhs.uk/common-health-questions/accidents-first-aid-and-treatments/what-should-i-keep-in-my-first-aid-kit/\n"
                                    "- https://www.mfasco.com/blog/health-topics/what-is-a-first-aid-kit.html",style: TextStyle(
                                  fontStyle: FontStyle.italic,
                                )),
                              ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
