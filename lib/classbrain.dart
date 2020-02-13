import 'package:flutter/material.dart';
import 'dart:math';


class ClassBrain {

  int numberStudentsCalled = 0;
  int currentStudentNumber = 0;

  List<int> calledStudents = [99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,99,];




  List<String> _mathsClassList = [
    'Charlie',
    'Ashwin',
    'Daksh',
    'Satvik',
    'Daniel',
    'Henry',
    'Geoffrey',
    'Jonathan',
    'Ethan Chen',
    'Ethan Chu',
    'Angus',
    'Cameron',
    'Matt Goh',
    'Palash',
    'Shlok',
    'Diego',
    'Jayden',
    'Matt Su',
    'Shreyans',
    'Brian',
    'Euan',
    'Charles',
    'Zachary',
    'Owen',
    'Toby',
    'Tianqi',
    'Jishnu',
    'Brian Lim',
    'Will',
    'Absent 4'
  ];

  int getNumberStudents() {
    return _mathsClassList.length;
  }

  String getStudentName() {
    return _mathsClassList[currentStudentNumber];
  }
  String getRandomStudentName() {
    bool alreadyCalled = false;
    bool foundNewOne = false;
    int randomIndex;

    if (numberStudentsCalled == getNumberStudents())
      return ("All Done!");

    print('a');
    // get a new random index into the names list
    while (foundNewOne == false) {
      print(getNumberStudents());
      print(foundNewOne);
      randomIndex = Random().nextInt(getNumberStudents());
      print(randomIndex);

      alreadyCalled = false;
      //check if already called
      for (int i=0;i<calledStudents.length-1;i++)
      {
        if (calledStudents[i] == randomIndex)
        {
          alreadyCalled = true;
        }
      }
      if (alreadyCalled == true)
      {
        foundNewOne = false;
      }
      else
      {
        foundNewOne = true;
      }
    }
    // randomIndex should have the number of the name we want
    // need to update the calledstudents list with the new number
    calledStudents[numberStudentsCalled] = randomIndex;
    numberStudentsCalled++;
    currentStudentNumber = randomIndex;
    return _mathsClassList[randomIndex];


  }

  int numberStudentsCalledSoFar()
  {
    return numberStudentsCalled;
  }

  void resetList() {
    numberStudentsCalled = 0;
    for (int i=0;i<calledStudents.length-1;i++)
    {
      // reset the calledStudents list
      calledStudents[i] = 99;
      int currentStudentNumber = 0;

    }

  }
}
