import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yekola/pages/challenges/challenge_exercice.dart';

import 'challenge_controller.dart';

class ChallengeDetails extends GetView<ChallengeController> {
  @override
  Widget build(BuildContext context) {
    //
    return Container(
      color: Colors.deepPurple,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(
                Icons.arrow_back,
              ),
              color: Colors.white,
            ),
            backgroundColor: Colors.deepPurple,
            title: const Text('Challenge details'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: [
                    //
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Organisateur",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    //
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "UNISEF",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue.shade600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    //
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset(
                              "assets/IconParkOutlineTransactionOrder.svg",
                              colorFilter: ColorFilter.mode(
                                  Colors.deepPurple, BlendMode.srcIn),
                              semanticsLabel: "",
                              height: 30,
                              width: 30,
                            ),
                            Text(
                              "Conditions",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            )
                          ],
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1. ETRE EN 7 OU 8 eme Education de base",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1. ETRE EN 7 OU 8 eme Education de base",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1. ETRE EN 7 OU 8 eme Education de base",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1. ETRE EN 7 OU 8 eme Education de base",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Prix à Gagner",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1. Une journée au misé culture d'art à Kinshasa",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1. Des fourniture scolaire",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1. Un an des frais gratuit",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "1. Un abonnement dans la bibliothèque de UCC",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  //
                  Get.to(ChallengeExercice());
                  //
                },
                child: Container(
                  padding: EdgeInsets.only(bottom: 10),
                  height: 70,
                  width: double.maxFinite,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Text(
                    "Commancer",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
//AvenirController avenirController = Get
}
