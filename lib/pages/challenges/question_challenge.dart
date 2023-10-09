import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionChallenge extends StatefulWidget {
  Map q;
  int t;
  PageController pageController;
  QuestionChallenge(this.pageController, this.q, this.t);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _QuestionChallenge();
  }
}

class _QuestionChallenge extends State<QuestionChallenge> {
  //
  double temps = 0;
  //

  @override
  void initState() {
    //
    temps = Get.size.width / 1;
    //
    super.initState();
    //
    Timer(const Duration(seconds: 1), () {
      setState(() {
        temps = 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    //
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 20,
          alignment: Alignment.centerLeft,
          child: AnimatedContainer(
            duration: const Duration(seconds: 20),
            color: Colors.deepPurple,
            height: 20,
            width: temps,
            onEnd: () {
              //
              widget.pageController.nextPage(
                  duration: const Duration(seconds: 1), curve: Curves.linear);
            },
          ),
        ),
        Expanded(
          flex: 1,
          child: ListView(
            padding: const EdgeInsets.all(10),
            children: [
              ListTile(
                title: Text(
                  "Question n° ${widget.t + 1}\n",
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
                    "",
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
                    widget.pageController.nextPage(
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
  }
}
