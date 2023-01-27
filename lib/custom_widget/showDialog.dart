import 'dart:io';

import 'package:flutter/material.dart';
import 'custom_form.dart';
import 'package:file_picker/file_picker.dart';

showgamecat(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
            height: 400,
            width: 600,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Category Key',
                            textColor: Colors.black,
                            fontSize: 25,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: 'Name',
                            textColor: Colors.black,
                            fontSize: 25,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: 'Max Level',
                            textColor: Colors.black,
                            fontSize: 25,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: 'Enable',
                            textColor: Colors.black,
                            fontSize: 25,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              height: 35,
                              width: 300,
                              child: CustomTextField(
                                fontsize: 20,
                              )),
                          SizedBox(
                              height: 35,
                              width: 300,
                              child: CustomTextField(
                                fontsize: 20,
                              )),
                          SizedBox(
                              height: 35,
                              width: 300,
                              child: CustomTextField(
                                fontsize: 20,
                              )),
                          const SwitchExample()
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100,
                      child: CustomButton(
                        elevatedbot: () {},
                        bottxt: 'Cancel',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 100,
                      child: CustomButton(
                        elevatedbot: () {},
                        bottxt: 'Save',
                      ),
                    ),
                  ],
                )
              ],
            )),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0))),
      );
    },
  );
}

  File? finalFile;

Future<void> chosenFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles();
  if (result != null) {
    File file = File(result.files.single.path?? "");
    finalFile = file;
  }
}

//Game Level
showgamelvl(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
            height: 400,
            width: 600,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: 'Answer',
                            textColor: Colors.black,
                            fontSize: 25,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: 'Random Letter',
                            textColor: Colors.black,
                            fontSize: 25,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: 'Level',
                            textColor: Colors.black,
                            fontSize: 25,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: 'Image',
                            textColor: Colors.black,
                            fontSize: 25,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: 'Audio',
                            textColor: Colors.black,
                            fontSize: 25,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              height: 35,
                              width: 300,
                              child: CustomTextField(
                                fontsize: 20,
                              )),
                          SizedBox(
                              height: 35,
                              width: 300,
                              child: CustomTextField(
                                fontsize: 20,
                              )),
                          SizedBox(
                            height: 35,
                            width: 300,
                            child: CustomTextField(
                              fontsize: 20,
                            ),
                          ),
                          SizedBox(
                              height: 35,
                              width: 300,
                              child: CustomTextField(
                                bottxt: finalFile.toString(),
                                onPressed: () {
                                  chosenFile();
                                },
                                chooseIcon: Icons.image,
                              )),
                              SizedBox(
                              height: 35,
                              width: 300,
                              child: CustomTextField(
                                bottxt: finalFile.toString(),
                                onPressed: () {
                                  chosenFile();
                                },
                                chooseIcon: Icons.audio_file,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 100,
                      child: CustomButton(
                        elevatedbot: () {},
                        bottxt: 'Cancel',
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 100,
                      child: CustomButton(
                        elevatedbot: () {},
                        bottxt: 'Save',
                      ),
                    ),
                  ],
                )
              ],
            )),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0))),
      );
    },
  );
}

//Display Game Level Details
showGameDetails(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SizedBox(
            height: 400,
            width: 600,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.network(
                            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                            width: 250,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            children: [
                              CustomText(
                                text: '1', //gameLvl.answer,
                                textColor: Colors.black,
                                fontSize: 25,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              CustomText(
                                text: '2', //gameLvl.randomLetter,
                                textColor: Colors.black,
                                fontSize: 25,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              CustomText(
                                text: '3', //gameLvl.level,
                                textColor: Colors.black,
                                fontSize: 25,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 300,
                        child: CustomButton(
                            bottxt: 'Play Audio', elevatedbot: () {}),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomButton(
                          elevatedbot: () {},
                          bottxt: 'Delete',
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: CustomButton(
                          elevatedbot: () {},
                          bottxt: 'Edit',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(2.0))),
      );
    },
  );
}
