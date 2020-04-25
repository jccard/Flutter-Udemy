import 'story.dart';

class StoryBrain {
  ////////////////////
  // Properties
  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
      storyID: 0,
      // storyID == index, just to make it easier to reference if I want to change anything later
      storyText:
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      choice1: 'I\'ll hop in. Thanks for the help!',
      choice2: 'Better ask him if he\'s a murderer first.',
      nextStory: [2, 1],
    ),
    Story(
      storyID: 1,
      storyText: 'He nods slowly, unphased by the question.',
      choice1: 'At least he\'s honest. I\'ll climb in.',
      choice2: 'Wait, I know how to change a tire.',
      nextStory: [2, 3],
    ),
    Story(
      storyID: 2,
      storyText:
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      choice1: 'I love Elton John! Hand him the cassette tape.',
      choice2: 'It\'s him or me! You take the knife and stab him.',
      nextStory: [5, 4],
    ),
    Story(
      storyID: 3,
      storyText:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choice1: 'Restart',
      choice2: '',
      nextStory: [0, 0],
    ),
    Story(
      storyID: 4,
      storyText:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choice1: 'Restart',
      choice2: '',
      nextStory: [0, 0],
    ),
    Story(
      storyID: 5,
      storyText:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choice1: 'Restart',
      choice2: '',
      nextStory: [0, 0],
    ),
  ];
  // Properties
  ////////////////////

  ////////////////////
  // Constructor, Getters, Setters
  String getStory() {
    return _storyData[_storyNumber].storyText;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }
  // Constructor, Getters, Setters
  ////////////////////

  ////////////////////
  // Methods
  void nextStory(int choiceNumber) {
    _storyNumber = _storyData[_storyNumber].nextStory[choiceNumber - 1];
  }

  bool buttonShouldBeVisible() {
    if (_storyData[_storyNumber].nextStory[1] == 0) {
      return false;
    } else {
      return true;
    }
  }
  // Methods
  ////////////////////
}
