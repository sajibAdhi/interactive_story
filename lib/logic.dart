class Story {
  String storyText;
  String choice1;
  String choice2;
  String choice3;

  Story({this.storyText, this.choice1, this.choice2, this.choice3});
}

class Logic {
  int storyLevel = 0;

  List<Story> storyDb = [
    Story(
        storyText: 'Your brother is eating your chocolate',
        choice1: "Take it from him",
        choice2: "Tell your Parents",
        choice3: "Just Leave him"),
    Story(
        storyText: 'He is Crying',
        choice1: 'Give it back to him',
        choice2: "Eat it quickly",
        choice3: "Tell your Parents"),
    Story(
        storyText: "You are so Cute",
        choice1: "Restart",
        choice2: '',
        choice3: ''),
    Story(
        storyText: 'You are so Harsh',
        choice1: 'Restart',
        choice2: '',
        choice3: ''),
    Story(
        storyText: 'This is a great option your dad bought chocolatyes.',
        choice1: 'Restart',
        choice2: '',
        choice3: '')
  ];

  List getStory() {
    return [
      storyDb[storyLevel].storyText,
      storyDb[storyLevel].choice1,
      storyDb[storyLevel].choice2,
      storyDb[storyLevel].choice3,
    ];
  }

  void nextStory(int choice) {
    if (choice == 1 && storyLevel == 0) {
      storyLevel = 1;
    } else if (choice == 2 && storyLevel == 0) {
      storyLevel = 4;
    } else if (choice == 3 && storyLevel == 0) {
      storyLevel = 2;
    } else if (choice == 1 && storyLevel == 1) {
      storyLevel = 2;
    } else if (choice == 2 && storyLevel == 1) {
      storyLevel = 3;
    } else if (choice == 3 && storyLevel == 1) {
      storyLevel = 4;
    } else if (storyLevel >= 2) {
      restartGame();
    }
  }

  void restartGame() {
    storyLevel = 0;
  }

  bool isInvisible() {
    if (storyLevel >= 2) {
      return true;
    } else {
      return false;
    }
  }
}
