import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Exercice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //
    return _Exercice();
  }
}

class _Exercice extends State<Exercice> {
  //
  PageController pageController = PageController();
  //
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Algebre / Derivée",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
          ),
          color: Colors.black,
        ),
      ),
      body: PageView(
        controller: pageController,
        children: List.generate(10, (t) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                flex: 1,
                child: ListView(
                  padding: const EdgeInsets.all(10),
                  children: [
                    ListTile(
                      title: Text(
                        "Question n° ${t + 1}\n",
                        style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 15,
                        ),
                      ),
                      subtitle: Text(
                        "Quelle est le premier Pays producteur de Patrole au monde ?",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      alignment: Alignment.centerLeft,
                      color: Colors.green,
                      child: Text(
                        "Arabie Saoudite",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      alignment: Alignment.centerLeft,
                      color: Colors.grey.shade300,
                      child: Text(
                        "USA",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      alignment: Alignment.centerLeft,
                      color: Colors.grey.shade300,
                      child: Text(
                        "Chine",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      alignment: Alignment.centerLeft,
                      color: Colors.grey.shade300,
                      child: Text(
                        "Rusie",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 10),
                height: 70,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Container(
                        alignment: Alignment.center,
                        color: Colors.grey.shade300,
                        child: Text(
                          "Retour",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: InkWell(
                        onTap: () {
                          //
                          pageController.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.linear);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.green,
                          child: Text(
                            "Suivant",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
