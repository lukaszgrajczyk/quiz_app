class QuestionsModel {
  QuestionsModel(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffle() {
    final shuffledList = List<String>.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
