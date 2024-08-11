/*
 * Crea un programa que invierta el orden de una cadena de texto
 * sin usar funciones propias del lenguaje que lo hagan de forma automática.
 * - Si le pasamos "Hola mundo" nos retornaría "odnum aloH"
 */
class ReverseChain {
  static String reverseChain(String stringValue) {
    String newString = '';
    for (final element
        in stringValue.runes.map(String.fromCharCode).toList().reversed) {
      newString += element;
    }
    return newString;
  }
}
