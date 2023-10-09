import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'details_test.dart';
import 'passes_controller.dart';

class Passes extends GetView<PassesController> {
  @override
  Widget build(BuildContext context) {
    //
    return ListView(
      padding: const EdgeInsets.all(10),
      children: List.generate(10, (index) {
        //
        return Card(
          elevation: 1,
          child: InkWell(
            onTap: () {
              //
              Get.to(DetailsTest());
              //
            },
            child: Container(
              height: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 7,
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
                          "Algebre / Derivée",
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
                  Container(
                    height: 1,
                    color: Colors.grey,
                    width: double.maxFinite,
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "10 / 20 Resultat",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: index % 2 == 2
                                        ? Colors.red
                                        : index % 2 == 1
                                            ? Colors.green
                                            : Colors.yellow.shade900,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_back_ios,
                                  size: 10,
                                  color: index % 2 == 2
                                      ? Colors.red
                                      : index % 2 == 1
                                          ? Colors.green
                                          : Colors.yellow.shade900,
                                ),
                                Text(
                                  "Erreur 10",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: index % 2 == 2
                                        ? Colors.red
                                        : index % 2 == 1
                                            ? Colors.green
                                            : Colors.yellow.shade900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "10 Jan, 2023",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
//AvenirController avenirController = Get
}
