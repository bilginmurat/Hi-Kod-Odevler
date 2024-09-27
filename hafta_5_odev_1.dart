import 'dart:io';

// 1. Soru
List<String> listeTersineCevirme() {
  List<String> ilkListe = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Bir veri giriniz: ");
    String? veri = stdin.readLineSync();
    if (veri != null) {
      ilkListe.add(veri);
    }
  }

  List<String> tersListe = ilkListe.reversed.toList();

  return tersListe;
}

// 2. Soru

int sayiToplami() {
  int toplamSayi = 0;

  List<int> toplanacakListe = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Bir sayı giriniz: ");
    String? input = stdin.readLineSync();

    if (input != null) {
      int veri = int.parse(input);
      toplanacakListe.add(veri);
    } else {
      print("Geçersiz giriş!");
    }
  }

  int listeUzunlugu = toplanacakListe.length;
  for (int i = 0; i < listeUzunlugu; i++) {
      toplamSayi = toplamSayi + toplanacakListe[i];
  }

  return toplamSayi;
}

double sayilarinOrtalamasi() {
  int toplamSayi = 0;
  int sayiAdeti = 101;

  for (int i = 0; i <= 100; i++) {
    toplamSayi = toplamSayi + i;
  }
  double ortalamaSayi = toplamSayi / sayiAdeti;

  return ortalamaSayi;
}

void main() {

  // 1. Soru
  List<String> tersListe = listeTersineCevirme();

  // 2.Soru
  int toplamSayi = sayiToplami();

  // 3.Soru
  double ortalamaSayi = sayilarinOrtalamasi();

  print("1. Soru Cevabı - yeni ters liste: $tersListe");
  print("2. Soru Cevabı - liste içerisindeki sayıların toplamı: $toplamSayi");
  print("3. Soru Cevabı - 0'dan 100'e kadar olan sayıların ortalaması: $ortalamaSayi");

}