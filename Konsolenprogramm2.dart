//

import 'dart:io';

double euroToNok(double euro) {
  return euro * 11.63;
}

double NokToEuro(double nok) {
  return nok / 11.63;
}

double euroToDollar(double euro) {
  return euro * 1.09;
}

double dollarToEuro(double dollar) {
  return dollar / 1.09;
}

void answerYes() {
  print(
      "Cool, dann musst du ja wissen, wie die Umrechnung von EURO in Dollar ist.");
  print(
      "lass uns doch mal sehen, wie der Umrechnungskurs ist. Gib doch mal bitte einen Betrag in EURO ein:");

  String inputEur = stdin.readLineSync() ?? "";
  double euroAmount = double.parse(inputEur);
  print(
      "Danke, also $euroAmount EUR sind ${euroToDollar(euroAmount).toStringAsFixed(2)} in Dollar.");
  print("jetzt mal ander herum, gib mal eine Betrag in Dollar ein.");
  String inputDollar = stdin.readLineSync() ?? "";
  double dollarAmount = double.parse(inputDollar);
  print(
      "Danke dir. $dollarAmount Dollar sind umgerechnet ${dollarToEuro(dollarAmount).toStringAsFixed(2)} EURO");
}

void answerNo() {
  print("Oh, dann hab ich das verwechselt, du wolltest ja nach Norwegen.");

  print(
      "Lass uns doch mal sehen, wie der Umrechnungskurs dort ist. Gib doch mal bitte einen Betrag in EURO ein:");

  String inputEur = stdin.readLineSync() ?? "";
  double euroAmount = double.parse(inputEur);
  print(
      "Danke, also $euroAmount EURO sind ${euroToNok(euroAmount).toStringAsFixed(2)} in norwegischen Kronen.");
  print(
      "jetzt mal andes herum, gib mal eine Betrag in norwegische Kronen ein.");

  String inputNok = stdin.readLineSync() ?? "";
  double nokAmount = double.parse(inputNok);
  print(
      "Danke dir. $nokAmount norwegische Kronen sind umgerechnet ${NokToEuro(nokAmount).toStringAsFixed(2)} EURO");
}

void main() {
  print(" Hallo, Willkommen, wie Heisst du denn?\n");
  String name = stdin.readLineSync() ?? "";

  print("Hallo $name, du willst ja bald nach Florida fliegen, richtg?");

  String travelPlace = stdin.readLineSync() ?? "";
  switch (travelPlace) {
    case ("ja"):
      answerYes();
    case ("nein"):
      answerNo();
  }
  print(
      "Jetzt weißt du Bescheid. Einen wundervollen Urlaub wünsch ich dir $name.");
}
