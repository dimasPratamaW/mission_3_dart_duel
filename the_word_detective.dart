void checkingPalindrome(String kata) {
  Iterable<String> kataTerpisah = kata.toLowerCase().split('').reversed;
  String kataBaru = kataTerpisah.join('');

  if (kataBaru == kata.toLowerCase()) {
    return print("- Status Palindrome : IYA");
  } else {
    return print("- Status Palindrome : TIDAK");
  }
}

void countingVowel(String kata) {
  List<String> vowel = ["a", "i", "u", "e", "o"];
  int jumlahVowel = 0;
  List<String> kataTerpisah = kata.toLowerCase().split('');

  for (int i = 0; i < kataTerpisah.length; i++) {
    for (String letter in vowel) {
      if (letter == kataTerpisah[i]) {
        jumlahVowel++;
      }
    }
  }

  return print("- Jumlah Huruf Vokal ${jumlahVowel}");
}

void main() {
  String kata = 'katako';
  print("Analisis Kata : ${kata}");
  checkingPalindrome(kata);
  countingVowel(kata);
}
