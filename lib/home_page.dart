import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:testing/model/quiz_model.dart';
import 'widgets/quiz_btn.dart';
import 'widgets/result_btn.dart';

class TestingPage extends StatefulWidget {
  const TestingPage({Key? key}) : super(key: key);

  @override
  TestingPageState createState() => TestingPageState();
}

class TestingPageState extends State<TestingPage> {
  int index = 0;
  final List jooptor = <bool>[];
  List tuurajooptor = <bool>[];
  List katajooptor = <bool>[];

  void teksher(bool value) {
    if (quizes[index].answer == value) {
      jooptor.add(true);
      tuurajooptor.add(true);
    } else {
      jooptor.add(false);
      katajooptor.add(false);
    }
    setState(() {
      if (quizes[index] == quizes.last) {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Жооптор:'),
                content: Text(
                    'Туура жооптор: ${tuurajooptor.length},Туура эмес жооптор: ${katajooptor.length},'),
                actions: [
                  TextButton(
                      onPressed: () {
                        setState(() {
                          index = 0;
                          jooptor.clear();
                          tuurajooptor.clear();
                          katajooptor.clear();
                          Navigator.pop(context);
                        });
                      },
                      child: const Text('Башынан башта'))
                ],
              );
            });
        index = 0;
      } else {
        index++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 37, 37),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Тапшырма - 07',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              quizes[index].question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const Spacer(),
            QuizButton(
              tuuraButton: true,
              baskanda: (value) {
                teksher(value);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            QuizButton(
              tuuraButton: false,
              baskanda: (value) {
                teksher(value);
              },
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              width: 100,
              height: 50,
              child: ListView.builder(
                  itemCount: jooptor.length,
                  itemBuilder: (context, index) {
                    return jooptor[index]
                        ? const ResultIcon(tuuraIcon: true)
                        : const ResultIcon(tuuraIcon: false);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
