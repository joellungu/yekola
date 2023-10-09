import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'evaluation_controller.dart';
import 'exercice.dart';

class Evaluation extends GetView<EvaluationController> {
  //
  RxInt classe = 1.obs;
  RxString option = "Primaire".obs;
  @override
  Widget build(BuildContext context) {
    //
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: Get.size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.shade500,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.numbers,
                        size: 30,
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Classe"),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Obx(
                    () => DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: classe.value,
                        isExpanded: true,
                        items: List.generate(
                          9,
                          (index) => DropdownMenuItem(
                            value: index + 1,
                            child: Text([
                              "1",
                              "2",
                              "3",
                              "4",
                              "5",
                              "6",
                              "7",
                              "8",
                              "9"
                            ][index]),
                          ),
                        ),
                        onChanged: (j) {
                          classe.value = j as int;
                          print(classe.value);
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: Get.size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.shade500,
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.school,
                        size: 30,
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Option / Section"),
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
                              "Primaire",
                              "Education de base",
                              "Secondaire",
                              "Humanitaire",
                            ][index],
                            child: Text([
                              "Primaire",
                              "Education de base",
                              "Secondaire",
                              "Humanitaire",
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
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: Get.size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.shade500,
                width: 1,
              ),
            ),
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
                        "assets/IconParkOutlineDocumentFolder.svg",
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
                    child: Text("Cours"),
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
                              "Primaire",
                              "Education de base",
                              "Secondaire",
                              "Humanitaire",
                            ][index],
                            child: Text([
                              "Primaire",
                              "Education de base",
                              "Secondaire",
                              "Humanitaire",
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
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: Get.size.width / 1.1,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey.shade500,
                width: 1,
              ),
            ),
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
                    child: Text("Notions"),
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
                              "Primaire",
                              "Education de base",
                              "Secondaire",
                              "Humanitaire",
                            ][index],
                            child: Text([
                              "Primaire",
                              "Education de base",
                              "Secondaire",
                              "Humanitaire",
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
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              //
              Get.to(Exercice());
              //
            },
            child: Container(
              height: 50,
              alignment: Alignment.center,
              width: Get.size.width / 1.1,
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey.shade500,
                  width: 1,
                ),
              ),
              child: const Text(
                "COMMANCER",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
//AvenirController avenirController = Get
}
