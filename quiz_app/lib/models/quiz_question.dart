// class question
class QuizQuestion {

// constructore to initialize the variables
QuizQuestion( this.text, this.answers);
//quest text variable 
final String text;
// list of answers variable
final List<String> answers;
// func to make a copy of the orignal list of answers to shuffle them 
 List<String> getShuffled(){
final shuffledList = List.of(answers);//copy the og list
 shuffledList.shuffle();//shuffle copied list
 return shuffledList;
 }



}
