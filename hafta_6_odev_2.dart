import 'dart:io';

// 1. Soru
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

// 2. Soru
List<String> listeIcerisindekiTekSayilar() {
  List<String> ilkListe = [];
  List<String> tekSayilar = [];
  for (int i = 0; i < 5; i++) {
    stdout.write("Bir veri giriniz: ");
    String? veri = stdin.readLineSync();
    if (veri != null) {
      ilkListe.add(veri);
      if (int.parse(veri) % 2 == 1) {
        tekSayilar.add(veri);
      }
    }
  }

  return tekSayilar;
}

// 3. Soru
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

void main() {
  // 1.Soru
  int toplamSayi = sayiToplami();

  // 2.Soru
  List<String> tekSayilar = listeIcerisindekiTekSayilar();

  // 3. Soru
  List<String> tersListe = listeTersineCevirme();
  
  print("1. Soru Cevabı - liste içerisindeki sayıların toplamı: $toplamSayi");
  print("2. Soru Cevabı - liste içerisindeki tek sayılar: $tekSayilar");
  print("3. Soru Cevabı - yeni ters liste: $tersListe");

}