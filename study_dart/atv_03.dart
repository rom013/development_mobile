main() {
  double media(a, b, c, d) {
    double average = (a + b + c + d) / 4;
    return average;
  }

  double scoreOne = 5.40;
  double scoreTwo = 8.5;
  double scoreThree = 6.0;
  double scoreFour = 10.0;
  double result = media(scoreOne, scoreTwo, scoreThree, scoreFour);

  print("A média aritmética calculada é $result");
}
