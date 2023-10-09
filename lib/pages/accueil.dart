import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'aide/aide.dart';
import 'calendrier/calendrier.dart';
import 'challenges/challenge.dart';
import 'challenges/challenge_controller.dart';
import 'messages/message_controller.dart';
import 'messages/messages.dart';
import 'stats/stats.dart';
import 'tests/tests.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _Accueil();
}

class _Accueil extends State<Accueil> {
  //
  ChallengeController challengeController = Get.put(ChallengeController());
  MessageController messageController = Get.put(MessageController());
  //
  //
  List angles = [
    {"titre": "Calendrier", "icon": "IconParkOutlineCalendarThree"},
    {"titre": "Tests", "icon": "IconParkOutlineTransactionOrder"},
    {
      "titre": "Resultats & progression",
      "icon": "IconParkOutlineChartHistogram"
    },
    {"titre": "Challanges", "icon": "IconParkOutlineMicroscopeOne"},
    {"titre": "Aide", "icon": "IconParkOutlineHelp"},
    {"titre": "Profil", "icon": "GalaPortrait"},
  ];
  //
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              SizedBox(
                height: Get.size.height,
                width: Get.size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 80, top: 10),
                        color: Colors.deepPurple,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                const SizedBox(
                                  height: 50,
                                  width: 50,
                                ),
                                Text(
                                  "Yekola",
                                  style: TextStyle(
                                    color: Colors.deepPurple.shade100,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () {
                                      //
                                      Get.to(Message());
                                      //
                                    },
                                    child: Stack(
                                      children: [
                                        SvgPicture.asset(
                                          "assets/IconParkOutlineEnvelopeOne.svg",
                                          colorFilter: ColorFilter.mode(
                                              Colors.grey.shade300,
                                              BlendMode.srcIn),
                                          semanticsLabel: "",
                                          height: 40,
                                          width: 40,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(),
                                            child: Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "12",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    //color: Colors.deepPurple.shade100
                                    //.withOpacity(0.7),
                                  ),
                                ),
                              ],
                            ),
                            ListTile(
                              // leading: Container(
                              //   height: 50,
                              //   width: 50,
                              //   alignment: Alignment.center,
                              //   child: Icon(
                              //     CupertinoIcons.person,
                              //     color: Colors.black,
                              //     size: 35,
                              //   ),
                              //   decoration: BoxDecoration(
                              //       borderRadius: BorderRadius.circular(25),
                              //       color: Colors.deepPurple.shade100
                              //           .withOpacity(0.7)),
                              // ),
                              title: Text(
                                "Pas de compte ?",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              subtitle: Text(
                                "Créer un compte pour plus de fonctionnalités",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 150,
                    bottom: 20,
                  ),
                  //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
                  child: Container(
                    //elevation: 1,
                    // shape: RoundedRectangleBorder(
                    //   borderRadius: BorderRadius.circular(20),
                    // ),
                    color: Colors.transparent,
                    child: SizedBox(
                      height: Get.size.height / 1.2,
                      width: Get.size.width / 1.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(5),
                              height: 150,
                              width: double.maxFinite,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      child: SvgPicture.asset(
                                        "assets/IconParkOutlineMicroscopeOne.svg",
                                        colorFilter: ColorFilter.mode(
                                            Colors.deepPurple, BlendMode.srcIn),
                                        semanticsLabel: "",
                                        height: 30,
                                        width: 30,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 5,
                                    child: Container(
                                      child: ListTile(
                                        // leading: Container(
                                        //   height: 50,
                                        //   width: 50,
                                        //   alignment: Alignment.center,
                                        //   child: Icon(
                                        //     CupertinoIcons.person,
                                        //     color: Colors.black,
                                        //     size: 35,
                                        //   ),
                                        //   decoration: BoxDecoration(
                                        //       borderRadius: BorderRadius.circular(25),
                                        //       color: Colors.deepPurple.shade100
                                        //           .withOpacity(0.7)),
                                        // ),
                                        title: Text(
                                          "Challanges",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25,
                                          ),
                                        ),
                                        subtitle: Text(
                                          "Gagnez des nombreux prix en participant à des Challanges",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        onPressed: () {},
                                        child: Text(" Voir "),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            //height: 330,
                            //color: Colors.red,
                            flex: 1,
                            child: GridView.count(
                              padding: EdgeInsets.only(
                                top: 0,
                              ),
                              crossAxisCount: 2,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 5,
                              childAspectRatio: 1.2,
                              children: List.generate(
                                angles.length,
                                (index) {
                                  Map e = angles[index];
                                  return InkWell(
                                    onTap: () {
                                      //
                                      if (index == 0) {
                                        //
                                        Get.to(const Calendrier());
                                        //
                                      } else if (index == 2) {
                                        //
                                        Get.to(const Statistique());
                                        //
                                      } else if (index == 3) {
                                        //
                                        Get.to(Challenge());
                                        //
                                      } else if (index == 4) {
                                        //
                                        Get.to(Aide());
                                        //
                                      } else if (index == 5) {
                                        //
                                        Get.snackbar("Oups",
                                            "L'application est en developpement");
                                        //
                                      } else {
                                        //
                                        Get.to(const Tests());
                                        //
                                      }
                                    },
                                    child: Card(
                                      //color: Colors.tealAccent,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          SvgPicture.asset(
                                            "assets/${e["icon"]}.svg",
                                            colorFilter: ColorFilter.mode(
                                                Colors.deepPurple,
                                                BlendMode.srcIn),
                                            semanticsLabel: e["titre"],
                                            height: 70,
                                            width: 70,
                                          ),
                                          Text(
                                            e["titre"],
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey.shade900),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
