import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'question_challenge.dart';

class ChallengeExercice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //
    return _ChallengeExercice();
  }
}

class _ChallengeExercice extends State<ChallengeExercice> {
  //
  PageController pageController = PageController();
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
          return QuestionChallenge(pageController, {}, t);
        }),
      ),
    );
  }
}
