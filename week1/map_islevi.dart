void main(){

  List sozluk1 = ["Book","Door","Key"];

  Map sozluk2 = {"Book":"Kitap" , "Door" : "Kapı" , "Key":"Anahtar"};

  print(sozluk1);

  print(sozluk2);

  // Map işlevini bir tür sözlük gibi düşüne bilirsiniz
  // Liste gibidir fakat her bir elemanın kendi değeri vardır

  // örneğin sozluk2 de "Book" anahtarı için  değerimiz "Kitap" tır

  print(sozluk2["Book"]); // sozluk2 için "Book" değerini yazdırınca Kitap çıktığını gördünüz

  // forEach işlevi Map içerisindeki tüm elemanları gezer ve istediğimiz işlemleri yapar
  // örneğin bütün key ve value değerlerini yazdıralım
  // key = anahtar , value = değer    "Book" => key , "Kitap" => value

  sozluk2.forEach((key, value) { 
    print(key + " : " + value);  // sozluk2 yazdırıldı
  });

  
}