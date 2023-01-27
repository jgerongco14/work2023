
// ignore_for_file: file_names

class GameLvl {
  String answer;
  String randomLetter;
  String level;
  String imageAdd;
  String audioAdd;

  GameLvl({
    required this.answer,
    required this.randomLetter,
    required this.level,
    required this.imageAdd,
    required this.audioAdd,
  });
}

List<GameLvl> gameLvl = [
  GameLvl(
      answer: 'RENDEL',
      randomLetter: 'LREEND',
      level: '1',
      imageAdd: 'Link',
      audioAdd: 'Link'
  ),
  GameLvl(
      answer: 'MOSH',
      randomLetter: 'HMSO',
      level: '2',
      imageAdd: 'Link',
      audioAdd: 'Link'
  )
];
