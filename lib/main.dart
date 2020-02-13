import 'package:flutter/material.dart';
import 'classbrain.dart';

void main() => runApp(Quizzler());

int studentNumber = 0;
ClassBrain theClassBrain = ClassBrain();
int totalStudents = theClassBrain.getNumberStudents();
int numberCalledStudents = 1;


class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Center(
              child: Text(
                '8MATB Random Name Generator',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),

        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                theClassBrain.getRandomStudentName(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.lightBlue,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'RANDOMISE',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  if (numberCalledStudents < totalStudents)
                    numberCalledStudents++;
                });
                //The user picked true.
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.deepOrangeAccent,
              child: Text(
                'RESET',
                style: TextStyle(
                  fontSize:30.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                  theClassBrain.resetList();
                  numberCalledStudents = 1;
                });
              },
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: Padding(
            padding: EdgeInsets.all(2.0),
            child: Center(
              child: Text(
                'You have called $numberCalledStudents/$totalStudents',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
