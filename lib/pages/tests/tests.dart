import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'evaluation/evaluation.dart';
import 'evaluation/evaluation_controller.dart';
import 'passes/passes.dart';
import 'passes/passes_controller.dart';

class Tests extends StatefulWidget {
  const Tests({super.key});

  @override
  State<Tests> createState() => _Tests();
}

class _Tests extends State<Tests> with TickerProviderStateMixin {
  late final TabController _tabController;
  //
  EvaluationController avenirController = Get.put(EvaluationController());
  //
  PassesController passesController = Get.put(PassesController());
  //

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
            title: const Text('TESTS'),
            bottom: TabBar(
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.green.shade700,
              indicatorWeight: 5,
              tabs: const <Widget>[
                Tab(
                  text: "Nouveau tests",
                  icon: Icon(Icons.edit),
                ),
                Tab(
                  text: "Tests éffectué",
                  icon: Icon(Icons.paste_sharp),
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              Evaluation(),
              Passes(),
            ],
          ),
        ),
      ),
    );
  }
}
