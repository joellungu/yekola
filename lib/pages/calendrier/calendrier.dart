import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Calendrier extends StatefulWidget {
  const Calendrier({super.key});

  @override
  State<Calendrier> createState() => _Calendrier();
}

class _Calendrier extends State<Calendrier> with TickerProviderStateMixin {
  late final TabController _tabController;
  //
  List _reponses = [
    "Maternelle",
    "Primaire",
    "Education de base",
    "Secondaire"
  ];
  //
  @override
  void initState() {
    //
    super.initState();
    //
    _tabController = TabController(length: _reponses.length, vsync: this);
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
            title: const Text('Calendrier'),
            bottom: TabBar(
              isScrollable: true,
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red.shade700,
              indicatorWeight: 5,
              tabs: List.generate(
                _reponses.length,
                (index) {
                  return Tab(
                    text: "${_reponses[index]}",
                    //icon: Icon(Icons.edit),
                  );
                },
              ),
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: List.generate(
              _reponses.length,
              (index) {
                return ListView(
                  padding: const EdgeInsets.all(10),
                  children: List.generate(
                    10,
                    (index) {
                      //
                      return Card(
                        elevation: 1,
                        child: InkWell(
                          onTap: () {
                            //
                            //Get.to(DetailsTest());
                            showModalBottomSheet(
                                context: context,
                                isScrollControlled: false,
                                isDismissible: true,
                                showDragHandle: true,
                                barrierLabel: "Details",
                                builder: (c) {
                                  return Container();
                                });
                            //
                          },
                          child: Container(
                            height: 150,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 7,
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
                                      "Interrogation général",
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
                                Container(
                                  height: 1,
                                  color: Colors.grey,
                                  width: double.maxFinite,
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          "Du 12 / 10 / 2023  ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.green),
                                        ),
                                        Text(" au "),
                                        Text(
                                          " 12 / 12 / 2023",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13,
                                              color: Colors.green),
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
                    },
                  ),
                );
              },
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              //
            },
            child: const Icon(Icons.help_outline),
          ),
        ),
      ),
    );
  }
}

/**
 * 
 
 */