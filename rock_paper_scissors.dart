//To Do 
//Build command line app
//Rock Paper Scissors
//Prompts user for input
//Takes in player input (Rock Paper Scissors quit) , anything else is invalid input
//Stores the players input in a variable
//Creates the AI move randomly
//Compares the players move to the ai move 
//Should print the players move , the ais move and the result which is a win , draw or a loss
//Should stop if player inputs q for quit
//Should run infinitely

import 'dart:io';
import 'dart:math';

enum Move{rock, paper, scissors}

void main(){

final rng = Random();

while (true){

  stdout.write("Hello kind sir! Rock[r], Paper[p], Scissors[s] , Quit[q] ");
  final input = stdin.readLineSync();

  if (input == "r"|| input == "p"|| input =="s" ){
    
    
    var playermove ;

    if (input == "r"){
      playermove =Move.rock;
    }
    else if (input == "p"){
      playermove =Move.paper;
    }
    else{
      playermove =Move.scissors;
    }
    final random =rng.nextInt(3);
    final AImove = Move.values[random];

    print("You played $playermove");
    print("AI played $AImove");

    if (playermove == AImove){
      print("You draw");
    }
    else if ((playermove == Move.rock && AImove == Move.paper) ||
    (playermove == Move.paper && AImove == Move.scissors) ||
    (playermove == Move.scissors && AImove == Move.rock)){
      print("You lose");
    }
    else{
      print("You win");
    }

       
  }
  else if (input == "q"){
    print("Thank you for your time kind sir");
    break;
  }
  else{
    print ("invalid input");
  }
}

}