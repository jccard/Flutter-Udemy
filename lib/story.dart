class Story {
  ////////////////////
  // Properties
  int storyID;
  String storyText;
  String choice1;
  String choice2;
  List<int> nextStory;

  ////////////////////
  // Constructor, Getters, Setters

  Story({this.storyID, this.storyText, this.choice1, this.choice2, this.nextStory});
}
