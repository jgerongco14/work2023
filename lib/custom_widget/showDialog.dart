
// ignore_for_file: avoid_print

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'custom_form.dart';

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

void chooseImage() async {
  try {
    final filePickerResult = await FilePicker.platform.pickFiles(type: FileType.image);
    
    // print(imagepicked?.path);
    if (await lessthan1MB(filePickerResult!.files.first)) {
      print('is less than 1mb or lower');
    } else {
      print('is not less than 1mb or lower');
    }
  } catch (error) {
    print(error);
  }
}

Future<bool> lessthan1MB(PlatformFile file) async {
     return file.size < 1000000;
}


Future chooseAudio() async {
  try {
    final filePickerResult = await FilePicker.platform.pickFiles(type: FileType.audio);
    if (await lessthan1MB(filePickerResult!.files.first)) {
      print('is less than 1mb or lower');
    } else {
      print('is not less than 1mb or lower');
    }
  } catch (e) {
    print(e.runtimeType);
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
                              )),
                          SizedBox(
                              height: 35,
                              width: 300,
                              child: CustomTextField(
                                onPressed: () {
                                    chooseImage();
                                },
                                chooseIcon: Icons.image,
                              )),
                          SizedBox(
                              height: 35,
                              width: 300,
                              child: CustomTextField(
                                onPressed: () {
                                    chooseAudio();
                                },
                                chooseIcon: Icons.image,
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
                          Image.asset(
                            'lib/assets/images/sampleImage.jpg',
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
