class Quiz {
  Quiz(this.question, this.answer);

  final String question;
  final bool answer;
}

final q1 = Quiz('Кыргызстанда 7 область барбы?', true);
final q2 = Quiz('Кыргызстандын калкы 7000 000.', false);
final q3 = Quiz('Кыргызстан Орт Азияда жайгашкан', true);
final q4 = Quiz('Кыргызстандын борбору Ош', false);
final q5 = Quiz('Бишкек шаары аябай кооз', true);
final q6 = Quiz('Бишкек шаарынын абасы аябай таза', false);
final q7 = Quiz('Чынгыз Айтматов Кыргызстанды дуйного тааныткан', true);

final quizes = <Quiz>[
  q1,
  q2,
  q3,
  q4,
  q5,
  q6,
  q7,
];
