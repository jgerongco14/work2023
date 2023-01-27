
// ignore_for_file: file_names

class GameCategory {
  String name;
  String catkey;
  String createdAt;
  bool isEnable;
  int maxlevel;
  int orderNum;
  String updateAt;

  GameCategory({
    required this.name,
    required this.catkey,
    required this.createdAt,
    required this.isEnable,
    required this.maxlevel,
    required this.orderNum,
    required this.updateAt,
  });
}

List<GameCategory> gamecatlist = [
  GameCategory(
      name: 'Quest Mode',
      catkey: 'questGameCatergoty',
      createdAt: '23 November 2022 at 10:49:33 UTC+8',
      isEnable: true,
      maxlevel: 21,
      orderNum: 1,
      updateAt: '23 November 2022 at 10:50:08 UTC+8'),
  GameCategory(
      name: 'Game 2',
      catkey: 'questGameCat2',
      createdAt: '23 December 2022 at 10:49:33 UTC+8',
      isEnable: true,
      maxlevel: 21,
      orderNum: 1,
      updateAt: '23 December 2022 at 10:50:08 UTC+8'),
];
