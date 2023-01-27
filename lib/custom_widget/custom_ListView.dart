// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import '../assets/files/GameCatInfo.dart';
import '../assets/files/GameLvlInfo.dart';

//Custom List View for Game Category
class CustomListViewGameCat extends StatelessWidget {
  CustomListViewGameCat({
    required this.onPressed,
    this.fontWeight,
    Key? key,
  }) : super(key: key);

  VoidCallback onPressed;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: gamecatlist.length,
      itemBuilder: (context, index) {
        GameCategory gamelist = gamecatlist[index];
        return Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            title: Text(
              gamelist.name,
              style: TextStyle(
                fontWeight: fontWeight ?? FontWeight.bold,
              ),
            ),
            trailing: Text(gamelist.catkey),
            onTap: onPressed,
          ),
        );
      },
    );
  }
}

class CustomAppBar extends StatelessWidget {
  CustomAppBar({
    required this.title,
    required this.edit,
    Key? key,
  }) : super(key: key);

  String? title;
  VoidCallback edit;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title ?? ''),
      actions: [
        IconButton(
          iconSize: 30,
          icon: const Icon(Icons.edit),
          onPressed: edit,
        ),
      ],
    );
  }
}

//Custom List View for Game Level
class CustomListViewGameLvl extends StatelessWidget {
  CustomListViewGameLvl({
    required this.onPressed,
    this.fontWeight,
    Key? key,
  }) : super(key: key);

  VoidCallback onPressed;
  FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: gameLvl.length,
      itemBuilder: (context, index) {
         GameLvl gamelistlvl = gameLvl[index];
        return Padding(
          padding: const EdgeInsets.all(5),
          child: ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 2),
              borderRadius: BorderRadius.circular(10),
            ),
            title: Text(
              gamelistlvl.level,
              style: TextStyle(
                fontWeight: fontWeight ?? FontWeight.bold,
              ),
            ),
            onTap: onPressed,
          ),
        );
      },
    );
  }
}