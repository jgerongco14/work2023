// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:my_app/custom_widget/custom_form.dart';
import 'custom_widget/custom_ListView.dart';
import 'custom_widget/showDialog.dart';

class GameDescription extends StatelessWidget {
  GameDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(56.0),
          child: CustomAppBar(
            title: 'Game Level',
            edit: () {
              showgamelvl(context);
            },
          ),
        ),
        body: Stack(
          children: <Widget>[
            CustomListViewGameLvl(onPressed: () {
               showGameDetails(context);
            }),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                    height: 50,
                    child: CustomButton(
                      elevatedbot: () {
                        showgamelvl(context);
                      },
                      bottxt: 'New Level',
                      bgColor: Colors.red,
                    ))),
          ],
        ));
  }
}

