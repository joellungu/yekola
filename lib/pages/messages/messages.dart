import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'message_controller.dart';

class Message extends GetView<MessageController> {
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
            title: const Text('Messages'),
          ),
          body: ListView(
            padding: const EdgeInsets.all(10),
            children: List.generate(10, (index) {
              //
              return Card(
                elevation: 1,
                child: InkWell(
                  onTap: () {
                    //
                    //Get.to(ChallengeDetails());
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
                              title: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  index % 2 == 1
                                      ? SvgPicture.asset(
                                          "assets/IconParkOutlineMail.svg",
                                          colorFilter: ColorFilter.mode(
                                              Colors.deepPurple,
                                              BlendMode.srcIn),
                                          semanticsLabel: "",
                                          height: 30,
                                          width: 30,
                                        )
                                      : SvgPicture.asset(
                                          "assets/IconParkOutlineMailOpen.svg",
                                          colorFilter: ColorFilter.mode(
                                              Colors.deepPurple,
                                              BlendMode.srcIn),
                                          semanticsLabel: "",
                                          height: 30,
                                          width: 30,
                                        ),
                                  Text(
                                    "Culture générale",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                    ),
                                  )
                                ],
                              ),
                              subtitle: Text(
                                "Gagnez une journée au misé culture d'art à Kinshasa et un cadeau surprise",
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "7 ",
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
                                      Text(" et "),
                                      Text(
                                        "8 eme",
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
          ),
        ),
      ),
    );
  }
//AvenirController avenirController = Get
}
