class QuizQuestion {
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers(){
    final shuffedAnswers = List.of(answers);
    shuffedAnswers.shuffle();
    return shuffedAnswers;
  }
}
extension QuizQuestionShuffle on QuizQuestion {
  List<String> getShuffledAnswers() {
    final copy = List.of(answers);
    copy.shuffle();
    return copy;
  }
}