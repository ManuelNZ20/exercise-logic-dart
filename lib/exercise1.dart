/*
 * Escribe una función que reciba dos palabras (String) y retorne
 * verdadero o falso (Bool) según sean o no anagramas.
 * - Un Anagrama consiste en formar una palabra reordenando TODAS
 *   las letras de otra palabra inicial.
 * - NO hace falta comprobar que ambas palabras existan.
 * - Dos palabras exactamente iguales no son anagrama.
 */
class Exercise1 {
  static bool anagram(String fWord, String sWord) {
    final a = fWord.toLowerCase().runes.map(String.fromCharCode).toList();
    final b = sWord.toLowerCase().runes.map(String.fromCharCode).toList();
    a.sort();
    b.sort();
    if (a.length != b.length) return false;
    for (int i = 0; i < a.length; i++) {
      if (!a[i].contains(b[i])) return false;
    }
    return true;
  }

  static String valueAnagram(String fWord, String sWord) =>
      '${anagram(fWord, sWord) ? 'Yes' : 'No'} anagram';
}
