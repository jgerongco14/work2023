import 'package:flutter/material.dart';
import 'custom_widget/custom_ListView.dart';
import 'custom_widget/showDialog.dart';
import 'gamedes.dart';

class GameCategoty extends StatelessWidget {
  const GameCategoty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56.0),
        child: CustomAppBar(
          title: 'Game Category',
          edit: () {
            showgamecat(context);
          },
        ),
      ),
      body: Center(
        child: CustomListViewGameCat(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => GameDescription(),
            ));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showgamecat(context);
        },
      ),
    );
  }
}
