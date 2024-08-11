/*
 * Escribe un programa que se encargue de comprobar si un número es o no primo.
 * Hecho esto, imprime los números primos entre 1 y 100.
 */
class PrimeNumber {
  static String isPrime(int n) => "$n: ${prime(n) ? "Is" : "Isn't"} Prime";
  static bool prime(int n) {
    int isPrime = 0;
    for (int i = 1; i <= n; i++) {
      if (n % i == 0) {
        isPrime++;
      }
    }
    return isPrime <= 2;
  }
}
