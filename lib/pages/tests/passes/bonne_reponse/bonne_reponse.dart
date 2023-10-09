import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BonneReponse extends StatefulWidget {
  const BonneReponse({super.key});

  @override
  State<BonneReponse> createState() => _BonneReponse();
}

class _BonneReponse extends State<BonneReponse> with TickerProviderStateMixin {
  late final TabController _tabController;
  //
  List _reponses = [];
  //
  @override
  void initState() {
    //
    for (int t = 0; t < 10; t++) {
      //
      _reponses.add("Question n° ${t + 1}");
    }
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
            title: const Text('Bonnes reponses'),
            bottom: TabBar(
              isScrollable: true,
              controller: _tabController,
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.green.shade700,
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
                  children: [
                    ListTile(
                      title: Text(
                        "${_reponses[index]}\n",
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
                    ListTile(
                      title: Text(
                        "Réferences\n",
                        style: TextStyle(
                          color: Colors.green.shade900,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      subtitle: Text(
                        """Velit duis esse deserunt officia mollit. Esse ex anim ea sint laborum et deserunt nulla. Labore nisi esse et reprehenderit velit ea cillum.

Mollit reprehenderit dolore elit elit laboris dolore in. Enim irure ea do consectetur irure ipsum duis eiusmod Lorem laborum deserunt. Ipsum occaecat magna aliquip do adipisicing cupidatat pariatur consectetur ipsum cillum exercitation ea. Do dolore nulla consectetur ad non reprehenderit eiusmod aliquip laborum proident aliquip.

Occaecat ut amet sunt sit laboris qui eiusmod. Est irure minim velit pariatur dolor id cupidatat ullamco Lorem exercitation aliquip aliquip sint. Aliqua veniam anim magna mollit labore. Nisi laborum ex laborum laborum fugiat excepteur laborum nostrud labore sint. Sunt ullamco tempor sunt amet. Aliqua non veniam voluptate in mollit tempor irure consequat. Commodo nostrud minim consectetur est veniam elit ipsum.

Labore labore aliquip nostrud minim sunt eiusmod consectetur incididunt aute aute reprehenderit. Occaecat velit exercitation anim laboris anim culpa ad nulla do laboris. Laboris duis proident ut ad veniam duis in minim proident Lorem deserunt enim. Do aute labore incididunt qui reprehenderit tempor voluptate incididunt reprehenderit duis enim.

Ut elit ex occaecat eiusmod aliquip proident sit sunt elit enim ipsum. Sunt amet incididunt adipisicing et mollit aute aute tempor ex officia mollit commodo in nisi. Elit excepteur pariatur ipsum ex.

Quis deserunt et sit proident reprehenderit proident. Sit veniam in deserunt pariatur quis ea ex. Cupidatat ullamco fugiat amet in fugiat exercitation cupidatat sit officia. Officia do consequat nostrud laboris sunt in officia deserunt nisi pariatur duis mollit non sunt. Aliquip mollit aliquip ipsum exercitation. Sint sit ipsum laborum aliquip eiusmod reprehenderit ipsum ea voluptate sit in.

Proident commodo aliquip proident commodo ullamco. Irure voluptate qui aliqua non ullamco adipisicing excepteur pariatur sunt officia nisi. Dolor consequat enim adipisicing deserunt esse culpa in pariatur in laboris.""",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
