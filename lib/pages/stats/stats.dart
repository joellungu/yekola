import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yekola/pages/tests/passes/bonne_reponse/bonne_reponse.dart';
import 'package:yekola/pages/tests/passes/mauvaise_reponse/mauvaise_reponse.dart';

class Statistique extends StatefulWidget {
  const Statistique({super.key});

  @override
  State<Statistique> createState() => _Statistique();
}

class _Statistique extends State<Statistique> {
  //
  List cours = [];
  //
  RxString option = "Janvier".obs;
  //
  @override
  void initState() {
    //
    cours = [
      {"cours": "Math", "pourcentage": 50},
      {"cours": "Dessin", "pourcentage": 30},
      {"cours": "Français", "pourcentage": 60},
      {"cours": "Chimie", "pourcentage": 80},
      {"cours": "Physique", "pourcentage": 90},
      {"cours": "Histoire", "pourcentage": 70},
      {"cours": "Geographie", "pourcentage": 20},
    ];
    //
    super.initState();
    //
  }

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
                "Statistique",
                style: TextStyle(
                  color: Colors.deepPurple.shade100,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //
                            SvgPicture.asset(
                              "assets/IconParkOutlineTransactionOrder.svg",
                              colorFilter: ColorFilter.mode(
                                  Colors.deepPurple, BlendMode.srcIn),
                              semanticsLabel: "",
                              height: 30,
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 6,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Période",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Obx(
                          () => DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: option.value,
                              isExpanded: true,
                              items: List.generate(
                                4,
                                (index) => DropdownMenuItem(
                                  value: [
                                    "Janvier",
                                    "Fevrier",
                                    "Mars",
                                    "Avril",
                                  ][index],
                                  child: Text([
                                    "Janvier",
                                    "Fevrier",
                                    "mars",
                                    "Avril",
                                  ][index]),
                                ),
                              ),
                              onChanged: (j) {
                                option.value = j as String;
                                print(option.value);
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ListView(
                    padding: EdgeInsets.all(5),
                    children: List.generate(
                      cours.length,
                      (index) {
                        Map cour = cours[index];
                        return ListTile(
                          title: Text(
                            cour['cours'],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Text(
                            "${cour['pourcentage']} %",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          leading: Container(
                            height: 50,
                            width: 50,
                            alignment: Alignment.center,
                            child: CircularProgressIndicator(
                              value: (cour['pourcentage'] / 100),
                              strokeWidth: 10,
                              backgroundColor: Colors.green,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
