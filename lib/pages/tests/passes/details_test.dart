import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yekola/pages/tests/passes/bonne_reponse/bonne_reponse.dart';
import 'package:yekola/pages/tests/passes/mauvaise_reponse/mauvaise_reponse.dart';

class DetailsTest extends StatefulWidget {
  const DetailsTest({super.key});

  @override
  State<DetailsTest> createState() => _DetailsTest();
}

class _DetailsTest extends State<DetailsTest> {
  //
  @override
  Widget build(BuildContext context) {
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
            title: Text(
              "Résultats",
              style: TextStyle(
                color: Colors.deepPurple.shade100,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 3,
                child: Container(
                  //padding: const EdgeInsets.only(bottom: 80, top: 10),
                  color: Colors.deepPurple,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ListTile(
                        title: Text(
                          "Bonne reponses",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          "80 %",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        leading: Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(
                            value: 0.2,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          "Mauvaise reponses",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          "18 %",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        leading: Container(
                          height: 50,
                          width: 50,
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(
                            value: 0.8,
                            backgroundColor: Colors.red,
                          ),
                        ),
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
                          "Algebre / Derivée",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        subtitle: Text(
                          "Vous pouvez toujours vous améliorer !",
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
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //
                      Card(
                        elevation: 1,
                        child: InkWell(
                          onTap: () {
                            //
                            Get.to(const BonneReponse());
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Bonne reponses",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "25 ",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          "(80 %)",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //
                      Card(
                        elevation: 1,
                        child: InkWell(
                          onTap: () {
                            //
                            Get.to(const MauvaiseReponse());
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            height: 70,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Mauvaise reponses",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "5 ",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        Text(
                                          "(18 %)",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //
                      Card(
                        elevation: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 5,
                                child: Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Partager mes resultats",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 5,
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.share,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
