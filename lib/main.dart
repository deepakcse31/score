import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:score/question.dart';

void main() {
  runApp(Quizler());
}
class Quizler extends StatelessWidget {

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
  List<Icon> scorekeeper=[
    Icon(
      Icons.check,
      color: Colors.green,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
    Icon(
      Icons.close,
      color: Colors.red,
    ),
  ];
  List<String> question=['you know me','You don,t have idea what to do right now','You should have to understand what is the condition rightnow'];
  List<bool> answer=[true,false,false];
  Question q1=Question(q:'you know me',a:true);
  List<Question> questionBank=[Question(q:'you know me', a:true)];
  int questionNumber=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(question[questionNumber],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white
              ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
              child: FlatButton(
                color: Colors.green,
                child: Text('True',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  backgroundColor: Colors.green,
                ),
                ),
                onPressed: (){
                 bool correctAnswer=answer[questionNumber];
                  if(correctAnswer==true)
                    {
                      print('you are right bro');
                    }
                  else{
                    print('kat jayega bro');
                  }
                 setState(() {
                    questionNumber++;
                  });
                  print(questionNumber);
                },
              ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: FlatButton(
              color: Colors.red,
              child: Text('False',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 30.0,
                  backgroundColor: Colors.red,
                ),),
            ),
          ),
        ),
        Row(children:scorekeeper)
      ],
    );
  }
}


